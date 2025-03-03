---
## Front matter
lang: ru-RU
title: Лабораторная работа 1
subtitle: Знакомство с Cisco Packet Tracer
author:
  - Ланцова Я. И.
institute:
  - Российский университет дружбы народов, Москва, Россия

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---

# Информация

## Докладчик

:::::::::::::: {.columns align=center}
::: {.column width="70%"}

  * Ланцова Яна Игоревна
  * студентка
  * Российский университет дружбы народов

:::
::::::::::::::

## Цель работы

Установить инструмент моделирования конфигурации сети Cisco Packet Tracer, ознакомиться с его интерфейсом.

## Задание

1. Установить на домашнем устройстве Cisco Packet Tracer.
2. Построить простейшую сеть в Cisco Packet Tracer, провести простейшую настройку оборудования.

# Выполнение лабораторной работы

## Выполнение лабораторной работы

![Установить в моей операционной системе Cisco Packet Tracer](image/1.png){#fig:001 width=40%}

## Выполнение лабораторной работы

![Для ОС типа Windows требуется блокировать для Packet Tracer доступ в Интернет](image/2.png){#fig:002 width=40%}

## Выполнение лабораторной работы

![Создадим новый проект lab_PT-01.pkt. В рабочем пространстве разместим концентратор (Hub-PT) и четыре оконечных устройства PC.](image/3.png){#fig:003 width=30%}

## Выполнение лабораторной работы

![Щёлкнув последовательно на каждое оконечном устройстве, зададим статические IP-адреса](image/4.png){#fig:004 width=40%}

## Выполнение лабораторной работы

![В основном окне проекта перейдем в режим моделирования. Выберем на панели инструментов мышкой «Add Simple PDU (P)» и щёлкним сначала на PC0, затем на PC2.](image/5.png){#fig:005 width=40%}

## Выполнение лабораторной работы

![Используя кнопку «Проверь себя» на вкладке OSI Model, ответим на вопросы.](image/6.png){#fig:006 width=40%}

## Выполнение лабораторной работы

![Очистим список событий, удалив сценарий моделирования. Выберем на панели инструментов мышкой «Add Simple PDU (P)» и щёлкнем сначала на PC0, затем на PC2. Снова выберем на панели инструментов мышкой «Add Simple PDU (P)» и щёлкнем сначала на PC2, затем на PC0.](image/7.png){#fig:007 width=20%}

## Выполнение лабораторной работы

![В списке событий посмотрим информацию о PDU. Увидим, что пакеты сначала передаются на хаб, где и возникает коллизия, так как он не может передать два сообщения одновременно.](image/8.png){#fig:008 width=20%}

## Выполнение лабораторной работы

![Перейдем в режим реального времени. В рабочем пространстве разместим коммутатор и 4 оконечных устройства PC.](image/9.png){#fig:009 width=30%}

## Выполнение лабораторной работы

![В основном окне проекта перейдем в режим моделирования. Выберем на панели инструментов мышкой «Add Simple PDU (P)» и щёлкним сначала на PC4, затем на PC6.](image/10.png){#fig:010 width=30%}

## Выполнение лабораторной работы

![Очистим список событий, удалив сценарий моделирования. Выберем на панели инструментов мышкой «Add Simple PDU (P)» и щёлкнем сначала на PC4, затем на PC6. Снова выберем на панели инструментов мышкой «Add Simple PDU (P)» и щёлкнем сначала на PC6, затем на PC4.](image/11.png){#fig:011 width=20%}


## Выполнение лабораторной работы

![Перейдем в режим реального времени. В рабочем пространстве соединим кроссовым кабелем концентратор и коммутатор. Перейдем в режим моделирования.](image/12.png){#fig:012 width=30%}

## Выполнение лабораторной работы

![Очистим список событий, удалив сценарий моделирования. На панели моделирования нажмием «Play» и в списке событий получим пакеты STP.](image/13.png){#fig:013 width=30%}


## Выполнение лабораторной работы

![Перейдем в режим реального времени. В рабочем пространстве добавим маршрутизатор. Соединим прямым кабелем коммутатор и маршрутизатор.](image/14.png){#fig:014 width=30%}


## Выполнение лабораторной работы

![Щёлкнем на маршрутизаторе и на вкладке его конфигурации пропишем статический IP-адрес, активируем порт](image/15.png){#fig:015 width=40%}


## Выполнение лабораторной работы

![Перейдем в режим моделирования (Simulation). Очистим список событий, удалив сценарий моделирования. Выберем на панели инструментов мышкой «Add Simple PDU (P)» и щёлкнем сначала на PC3, затем на маршрутизаторе.](image/16.png){#fig:016 width=20%}

## Выводы

В процессе выполнения данной лабораторной работы я установила инструмент моделирования конфигурации сети Cisco Packet Tracer, ознакомилась с его интерфейсом.
