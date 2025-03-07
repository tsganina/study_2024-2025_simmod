---
## Front matter
lang: ru-RU
title: "Упражнение. Scilab, подсистема xcos"
subtitle: "Дисциплина: Имитационное моделирование"
author:
  - Ганина Т. С.
institute:
  - Группа НФИбд-01-22
  - Российский университет дружбы народов, Москва, Россия
date: 07 марта 2025

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

  * Ганина Таисия Сергеевна
  * Студентка 3го курса, группа НФИбд-01-22
  * Фундаментальная информатика и информационные технологии
  * Российский университет дружбы народов
  * [Ссылка на репозиторий гитхаба tsganina](https://github.com/tsganina/study_2024-2025_simmod)

:::
::: {.column width="30%"}

:::
::::::::::::::

# Вводная часть

## Цели и задачи

Целью данной работы является приобретение навыков использования  Scilab, а именно - подсистемы xcos. Также необходимо создать простую модель в OpenModelica.

## Задание

1. Построить с помощью xcos фигуры Лиссажу.
2. Выполнить моделирование в OMEdit.

# Построить с помощью xcos фигуры Лиссажу

##

![Окно моделирования и палитра блоков](image/2.png){#fig:002 width=50%}

##

![Меняю цвет графика](image/19.png){#fig:003 width=40%}

##

![Учебная работа, пример из задания](image/4.png){#fig:004 width=80%}

##

![Как задавать параметры блока GENSIN_f](image/26.png){#fig:005 width=70%}

##

![Как задавать параметры блока CLOCK_c](image/28.png){#fig:006 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 2, \delta = 0$](image/5.png){#fig:007 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 2, \delta = \pi /4$](image/6.png){#fig:008 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 2, \delta = \pi /2$](image/7.png){#fig:009 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 2, \delta = 3\pi /4$](image/8.png){#fig:010 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 2, \delta = \pi$](image/9.png){#fig:011 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 4, \delta = 0$](image/10.png){#fig:012 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 4, \delta = \pi /4$](image/11.png){#fig:013 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 4, \delta = \pi /2$](image/12.png){#fig:014 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 4, \delta = 3\pi /4$](image/13.png){#fig:015 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 4, \delta = \pi$](image/14.png){#fig:016 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 6, \delta = 0$](image/15.png){#fig:017 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 6, \delta = \pi /4$](image/16.png){#fig:018 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 6, \delta = \pi /2$](image/17.png){#fig:019 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 6, \delta = 3\pi /4$](image/18.png){#fig:020 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 6, \delta = \pi$](image/20.png){#fig:021 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 3, \delta = 0$](image/21.png){#fig:022 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 3, \delta = \pi /4$](image/22.png){#fig:023 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 3, \delta = \pi /2$](image/23.png){#fig:024 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 3, \delta = 3\pi /4$](image/24.png){#fig:025 width=70%}

##

![Фигура Лиссажу: $A = B = 1, a = 2, b = 3, \delta = \pi$](image/25.png){#fig:026 width=70%}

# Реализация модели в OpenModelica

![Создать новый Modelica Класс](image/29.png){#fig:027 width=70%}

##

![Код для дифференциального уравнения](image/31.png){#fig:028 width=70%}

##

![Установка симуляции](image/34.png){#fig:031 width=70%}

##

![Полученный график для x после смены параметров симуляции](image/35.png){#fig:032 width=70%}

##

![Полученные графики для x и x' после смены параметров симуляции](image/36.png){#fig:033 width=70%}

# Результаты

В результате выполнения лабораторной работы я научилась работать со средствами моделирования xcos и OpenModelica.
