---
## Front matter
title: "git information"
subtitle: "Дисциплина: Имитационное моделирование"
author: "Ганина Таисия Сергеевна, НФИбд-01-22"
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

# Git
В терминале Linux можно посмотреть настройки и конфигурацию Git, включая информацию об аккаунте, почте и имени пользователя, с помощью следующих команд:

### 1. **Показать глобальные настройки Git**
```
git config --list --global
```
Этот список покажет основные глобальные настройки, включая имя пользователя и почту.

### 2. **Показать все настройки Git (включая системные и локальные)**
```
git config --list --show-origin
```
Это выведет все настройки Git, включая их источник (файл конфигурации, в котором они заданы).

### 3. **Проверить конкретные параметры:**
- **Имя пользователя:**
  ```
  git config --global user.name
  ```
- **Email:**
  ```
  git config --global user.email
  ```
- **Какой SSH-ключ используется для аутентификации с GitHub:**
  ```
  ssh -T git@github.com
  ```
  Если SSH-ключ привязан, появится сообщение:
  ```
  Hi username! You've successfully authenticated, but GitHub does not provide shell access.
  ```
- **Какой токен или учетные данные сохранены (если используется credential helper):**
  ```
  git credential reject https://github.com
  git credential fill < ~/.git-credentials
  ```
  Или если используется `store`:
  ```
  cat ~/.git-credentials
  ```
  Если используется `manager-core` (в более новых версиях Git):
  ```
  git credential-manager list
  ```

### 4. **Файл глобальной конфигурации Git**
Можно открыть его напрямую:
```
cat ~/.gitconfig
```

### 5. **Файл локальной конфигурации репозитория**
Если находитесь в репозитории, можно посмотреть локальные настройки:
```
git config --list --local
```

### 6. **Файл системной конфигурации Git**
Если нужны настройки всего Git на уровне системы:
```
cat /etc/gitconfig
```
