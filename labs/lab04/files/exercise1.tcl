# создание объекта Simulator, который будет управлять процессом моделирования
set ns [new Simulator]

# открытие файла out.nam для записи данных о моделировании,
# этот файл будет использоваться визуализатором nam для анимации процесса
set nf [open out.nam w]

# указываем, что все результаты моделирования будут записываться в nf (out.nam)
$ns namtrace-all $nf

# открытие файла out.tr для трассировки событий
# в этом файле будут фиксироваться все сетевые события
set f [open out.tr w]

# указываем, что все трассируемые события будут записываться в f (out.tr)
$ns trace-all $f

# установка параметров TCP-агента:
# максимальный размер окна TCP равен 32
Agent/TCP set window_ 32

# размер пакетов TCP установлен в 500 байт
Agent/TCP set pktSize_ 500

# процедура finish вызывается в конце моделирования
proc finish {} {
    global tchan_

    # блок кода AWK для обработки выходных данных
    # awk используется для извлечения данных из all.q 
    # и сохранения их в temp.q и temp.a
    set awkCode {
        {
            # если первая колонка содержит "Q" и строка имеет больше двух полей
            if ($1 == "Q" && NF>2) {
                # записываем второе и третье поле в temp.q
                print $2, $3 >> "temp.q";
                set end $2
            }
            # если первая колонка содержит "a" и строка имеет больше двух полей
            else if ($1 == "a" && NF>2)
                # записываем второе и третье поле в temp.a
                print $2, $3 >> "temp.a";
        }
    }

    # удаляем временные файлы
    exec rm -f temp.q temp.a

    # создаем пустые файлы temp.q и temp.a
    exec touch temp.a temp.q

    # открываем temp.q, записываем в него цвет для графика
    set f [open temp.q w]
    puts $f "0.Color: Blue"
    close $f

    # открываем temp.a, записываем в него цвет для графика
    set f [open temp.a w]
    puts $f "0.Color: Brown"
    close $f

    # выполняем AWK-скрипт для обработки данных
    exec awk $awkCode all.q

    after 1000
    # запуск xgraph для отображения графиков TCP-окна и очереди
    exec xgraph -fg purple -bg lightgreen -bb -tk -x time -t "TCPRenoCWND" WindowVsTimeRenoOne &
    exec xgraph -fg purple -bg pink -bb -tk -x time -t "TCPRenoCWND" WindowVsTimeRenoAll &
    exec xgraph -fg purple -bg lightblue -bb -tk -x time -y queue temp.q &
    exec xgraph -fg purple -bg lightyellow -bb -tk -x time -y queue temp.a &

    # запуск nam для визуализации сети
    exec nam out.nam &

    # завершение программы
    exit 0
}

# процедура для записи данных о размере окна TCP в файл
proc plotWindow {tcpSource file} {
    global ns
    set time 0.01 ;# интервал времени между измерениями
    set now [$ns now] ;# текущее время моделирования
    set cwnd [$tcpSource set cwnd_] ;# текущее значение TCP-окна

    # записываем текущее время и размер окна в файл
    puts $file "$now $cwnd"

    # планируем следующий вызов этой процедуры через 0.01 секунды
    $ns at [expr $now+$time] "plotWindow $tcpSource $file"
}


# создание двух узлов r1 и r2
set r1 [$ns node]
set r2 [$ns node]

# изменение формы и цвета маршрутизаторов
$r1 shape square
$r1 color red
$r2 shape square
$r2 color red

# создание связи r1-r2 с пропускной способностью 20 Мбит/с и задержкой 15 мс,
# используется очередь типа RED
$ns simplex-link $r1 $r2 20Mb 15ms RED

# создание связи r2-r1 со пропускной способностью 15 Мбит/с и задержкой 20 мс,
# с очередью DropTail
$ns simplex-link $r2 $r1 15Mb 20ms DropTail

# установка лимита очереди между r1 и r2 (300 пакетов)
$ns queue-limit $r1 $r2 300


# N клиентов загружают файлы с N серверов через маршрутизаторы r1 и r2
# количество пар клиентов и серверов TCP
set N 30

# Назначаем цвет пакетов TCP (синий)
$ns color 1 Blue

# создание N TCP-соединений
for {set i 0} {$i < $N} {incr i} {
    # создаем узел-клиент n1(i) и соединяем его с r1
    set n1($i) [$ns node]
    $ns duplex-link $n1($i) $r1 100Mb 20ms DropTail

    # создаем узел-сервер n2(i) и соединяем его с r2
    set n2($i) [$ns node]
    $ns duplex-link $n2($i) $r2 100Mb 20ms DropTail

    # создаем TCP-соединение между n1(i) и n2(i), используя TCP Reno
    set tcp($i) [$ns create-connection TCP/Reno $n1($i) TCPSink $n2($i) $i]

    # Присваиваем идентификатор потока (fid) для цветового обозначения
    $ns at 0.0 "$tcp($i) set fid_ 1"

    # привязываем FTP-источник к TCP-соединению
    set ftp($i) [$tcp($i) attach-source FTP]
}


# открываем файлы для записи данных о размере окна TCP
set windowVsTimeOne [open WindowVsTimeRenoOne w]
puts $windowVsTimeOne "0.Color: Black"

set windowVsTimeAll [open WindowVsTimeRenoAll w]
puts $windowVsTimeAll "0.Color: Red"

# мониторинг очереди в r1-r2 с интервалом 0.1 секунды
set qmon [$ns monitor-queue $r1 $r2 [open qm.out w] 0.1]

# установка времени выборки данных о состоянии очереди
[$ns link $r1 $r2] queue-sample-timeout

# получаем объект RED-очереди между r1 и r2
set redq [[$ns link $r1 $r2] queue]

# настройка параметров RED-очереди:
# порог минимального заполнения - 75 пакетов
$redq set thresh_ 75

# порог максимального заполнения - 150 пакетов
$redq set maxthresh_ 150

# вес средней очереди
$redq set q_weight_ 0.002

# параметр, определяющий вероятность отбрасывания пакетов
$redq set linterm_ 10

# открываем файл all.q для записи данных о заполненности очереди
set tchan_ [open all.q w]

# включаем трассировку текущей длины очереди
$redq trace curq_

# включаем трассировку среднего размера очереди
$redq trace ave_

# привязываем файл all.q к объекту очереди, чтобы записывать данные
$redq attach $tchan_

# запуск всех FTP-серверов и мониторинг окон TCP
for {set i 0} {$i < $N} {incr i} {
# запускаем FTP-трафик через TCP-соединение $tcp($i)
    $ns at 0.0 "$ftp($i) start"
# запуск мониторинга окна TCP для всех соединений
    $ns at 0.0 "plotWindow $tcp($i) $windowVsTimeAll"
}

# запуск мониторинга окна TCP для первого TCP-соединения отдельно
$ns at 0.0 "plotWindow $tcp(1) $windowVsTimeOne"

# планируем завершение моделирования через 20 секунд
$ns at 20.0 "finish"

# запускаем симуляцию
$ns run
