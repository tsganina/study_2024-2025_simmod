---
## Front matter
lang: ru-RU
title: "Лабораторная работа №9"
subtitle: "Дисциплина: Имитационное моделирование"
author:
  - Ганина Т. С.
institute:
  - Группа НФИбд-01-22
  - Российский университет дружбы народов, Москва, Россия
date: 05 апреля 2025

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

Реализовать модель "Накорми студентов" в CPN Tools.

## Задание

- Реализовать модель "Накорми студентов" в CPN Tools;
- Вычислить пространство состояний, сформировать отчет о нем и построить граф.

## Граф сети модели «Накорми студентов»

![Граф сети модели «Накорми студентов»](image/1.png){#fig:001 width=40%}

## Декларации модели «Накорми студентов»

![Декларации модели «Накорми студентов»](image/2.png){#fig:002 width=50%}

## Модель «Накорми студентов»

![Модель «Накорми студентов»](image/4.png){#fig:003 width=40%}

## Запуск модели «Накорми студентов»

![Запуск модели «Накорми студентов»](image/5.png){#fig:004 width=40%}

## Отчёт о Пространстве состояний для модели «Накорми студентов»

```
 Statistics
------------------------------------------------------------------------
  State Space
     Nodes:  4
     Arcs:   3
     Secs:   0
     Status: Full
  Scc Graph
     Nodes:  4
     Arcs:   3
     Secs:   0
 Boundedness Properties
------------------------------------------------------------------------
```

## Отчёт о Пространстве состояний для модели «Накорми студентов»

```
  Best Integer Bounds
                             Upper      Lower
     nakormi_studenta'food 1 5          2
     nakormi_studenta'hungry_student 1
                             3          0
     nakormi_studenta'satisfied_student 1
                             3          0
```

## Отчёт о Пространстве состояний для модели «Накорми студентов»

```
  Best Upper Multi-set Bounds
     nakormi_studenta'food 1
                         5`pasty
     nakormi_studenta'hungry_student 1
                         3`student
     nakormi_studenta'satisfied_student 1
                         3`student
```

## Отчёт о Пространстве состояний для модели «Накорми студентов»

```
Best Lower Multi-set Bounds
     nakormi_studenta'food 1
                         2`pasty
     nakormi_studenta'hungry_student 1
                         empty
     nakormi_studenta'satisfied_student 1
                         empty
```

## Отчёт о Пространстве состояний для модели «Накорми студентов»

```
 Fairness Properties
------------------------------------------------------------------------
     No infinite occurrence sequences.

```

## Пространство состояний для модели «Накорми студентов»

![ Пространство состояний для модели «Накорми студентов»](image/7.png){#fig:005 width=60%}


# Результаты

В процессе выполнения данной лабораторной работы я реализовала модель "Накорми студентов" в CPN Tools.
