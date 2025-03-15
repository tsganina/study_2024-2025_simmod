---
## Front matter
title: "Отчёт по лабораторной работе №6"
subtitle: "Дисциплина: Имитационное моделирование"
author: "Ганина Таисия Сергеевна, НФИбд-01-22"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью данной работы является приобретение навыков создания модели "хищник-жертва" в xcos, в xcos с использованием блока Modelica и в OpenModelica.

# Задание

1. Создать модель "хищник-жертва" в xcos.
2. Создать модель "хищник-жертва" в xcos с использованием блока Modelica.
3. Создать модель "хищник-жертва" в OpenModelica (упражнение).

# Теоретическое введение

Модель «хищник–жертва» (модель Лотки — Вольтерры) представляет собой модель межвидовой конкуренции. В математической форме модель имеет вид:

$$
\begin{cases}
  \dot x = ax - bxy \\
  \dot y = cxy - dy,
\end{cases}
$$

где $x$ — количество жертв; $y$ — количество хищников; $a, b, c, d$ — коэффициенты, отражающие взаимодействия между видами: $a$ — коэффициент рождаемости
жертв; $b$ — коэффициент убыли жертв; $c$ — коэффициент рождения хищников; $d$ —
коэффициент убыли хищников. [@lab_ruk] [@math_mod_trubetskoi]

# Выполнение лабораторной работы

## Создать модель "хищник-жертва" в xcos

В начале я составила модель из блоков, задавая необходимые значения (рис. @fig:001, @fig:002, @fig:003, @fig:004, @fig:005). 

![Отражение блоков (зеркально)](image/1.png){#fig:001 width=70%}

![Модель "хищник–жертва" в xcos](image/2.png){#fig:002 width=70%}

![Динамика изменения численности хищников и жертв модели при a = 2, b = 1, c = 0, 3, d = 1, x(0) = 2, y(0) = 1 (слева) и фазовый портрет (справа)](image/3.png){#fig:003 width=70%}

![Редактирование параметров блока cscope](image/cscope.png){#fig:004 width=70%}

![Редактирование параметров блока cscopexy](image/cscopexy.png){#fig:005 width=70%}

## Создать модель "хищник-жертва" в xcos с использованием блока Modelica

Затем я открыла новое окно для создания модели с использованием блока Modelica  (рис. @fig:006, @fig:007, @fig:008, @fig:009).

![Параметры блока Modelica для модели. Ввод значений](image/5.png){#fig:006 width=70%}

![Параметры блока Modelica для модели. Ввод значений - функция](image/4.png){#fig:007 width=70%}

![Модель "хищник–жертва" в xcos с применением блока Modelica](image/6.png){#fig:008 width=70%}

![Динамика изменения численности хищников и жертв модели при a = 2, b = 1, c = 0, 3, d = 1, x(0) = 2, y(0) = 1 (слева) и фазовый портрет (справа) с использованием блока Modelica](image/7.png){#fig:009 width=70%}

## Создать модель "хищник-жертва" в OpenModelica (упражнение)

Для начала я создала класс, а после написала код (рис. @fig:010, @fig:011).

![Код для модели "хищник–жертва" в OpenModelica](image/8.png){#fig:010 width=70%}

![Установки симуляции (конечное время = 30)](image/9.png){#fig:011 width=70%}

Получила динамики изменения численности (рис. @fig:012):

![Динамика изменения численности хищников и жертв модели при a = 2, b = 1, c = 0, 3, d = 1, x(0) = 2, y(0) = 1 в OpenModelica](image/10.png){#fig:012 width=70%}

Для построения фазового портрета нужно было использовать Parametric Plot (рис. @fig:013):

![Фазовый портрет модели при a = 2, b = 1, c = 0, 3, d = 1, x(0) = 2, y(0) = 1 в OpenModelica](image/11.png){#fig:013 width=70%}

# Выводы

В ходе данной работы я приобрела навыки создания модели "хищник-жертва" в xcos, в xcos с использованием блока Modelica и в OpenModelica.

# Список литературы{.unnumbered}

::: {#refs}
:::

