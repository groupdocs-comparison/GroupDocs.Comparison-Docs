---
id: как-развернуть-ktor-сравнение-образец-на-heroku-paas-платформу
url: comparison/java/how-to-deploy-ktor-comparison-sample-to-heroku-paas-platform
title: "Как развернуть сравнительный образец Ktor на платформе Heroku PaaS"
weight: 20
description: "В статье описывается, как можно развернуть наш сравнительный образец Ktor на платформе Heroku PaaS."
keywords: "Ktor Framework, сравнение документов, сравнение файлов с Kotlin, Paas, Heroku"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
имя: Pdf, Word, Excel компаратор
        description: "Продукт позволяет сравнивать PDF, Word, Excel, PowerPoint, Code, Image, AutoCad и многие другие документы."
код продукта: сравнение
Платформа продукта: Java
как:
название: Как развернуть проект Ktor на Heroku
        description: "Узнайте, как развернуть пример проекта Comparison Ktor на Heroku"
шаги:
- название: Системные требования
текст: Какие инструменты вам нужны для развертывания приложения на Heroku
- название: Получение примера приложения с GitHub
текст: Загрузка предварительно настроенного образца приложения для его развертывания
- название: Ключевые моменты проекта, которые необходимо развернуть на Heroku.
текст: Основные вещи, которые необходимо настроить в проекте перед началом его развертывания
- название: Создание приложения Heroku
текст: Создание приложения в учетной записи Heroku, в которой будет развернут образец
- название: Развертывание примера приложения в Heroku
текст: Запуск команды для развертывания примера приложения и проверки того, что все работает
---
Платформа как услуга (PaaS) — очень популярное решение для развертывания веб-приложений и веб-сайтов. К счастью, [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) можно легко с ними интегрировать. В статье описано, как можно развернуть сравнительный пример, написанный с помощью Ktor Framework, на одну из самых популярных платформ PaaS — Heroku. Пример сравнения можно использовать бесплатно и он доступен [на GitHub] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/68c3f01/Demos/Ktor).

### Системные Требования

Чтобы развернуть образец на сервере Heroku, вам необходимо установить следующие приложения.

1. `Heroku CLI` - для получения доступа к вашей учетной записи (конечно, вам нужна учетная запись)
2. `Git` - загрузить образец приложения и развернуть его на сервере Heroku.

### Получение примера приложения с GitHub

1. Перейдите на [страницу GitHub] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) с примерами [API GroupDocs.Comparison] (https://products.groupdocs.com/comparison). /Ява/)
2. Нажмите зеленую кнопку «Код» в правом верхнем углу страницы и скопируйте ссылку на репозиторий HTTPS.
3. Откройте командную строку Windows или терминал Linux и выполните следующую команду.

``` оболочка
клон git https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java.git
```

Пример приложения был загружен с GitHub в ваш локальный каталог. Не закрывайте командную строку

### Ключевые моменты проекта для развертывания на Heroku

1. В build.gradle.kts добавлена специальная задача Gradle. Это необходимо для Heroku для сборки исполняемого файла примера

<script src="https://gist.github.com/groupdocs-comparison-gists/9420eee014f7f425a6f53cc8405fb21d.js"></script>

2. Использование порта из переменной окружения PORT (файл application.conf). Это важно, потому что Heroku может менять порт при каждом запуске приложения.

<script src="https://gist.github.com/groupdocs-comparison-gists/c3e61833f1878eccfd5c7bb4830f62e5.js"></script>

3. Файл `Procfile` был создан для того, чтобы сказать Heroku, как запустить приложение

<script src="https://gist.github.com/groupdocs-comparison-gists/585de64fb7b5d3b0f8af68871f39161d.js"></script>

4. Файл `system.properties` был создан для указания версии Java, необходимой нашему приложению.

<script src="https://gist.github.com/groupdocs-comparison-gists/387d00d93e8527292e71385fa0c22d0f.js"></script>

### Создание приложения Heroku

1. В командной строке выполните следующие команды

<script src="https://gist.github.com/groupdocs-comparison-gists/5846d06dbc8f5a099596e10531a1fc20.js"></script>

Откроется веб-страница Heroku, где вы должны войти в систему, чтобы предоставить инструменту командной строки доступ к вашей учетной записи.

2. Создайте приложение, выполняющее следующую команду:

<script src="https://gist.github.com/groupdocs-comparison-gists/960345297cd9dd3cf427939d500a753b.js"></script>

Где `my-comparison-app-name` — это имя приложения. Вы можете использовать любое имя, но оно должно быть уникальным. Результатом команды будет веб-адрес для доступа к вашему новому приложению и ссылка на репозиторий heroku git:

``` оболочка
https://my-comparison-app-name.herokuapp.com/ | https://git.heroku.com/my-comparison-имя-приложения.git
```

### Развертывание примера приложения в Heroku

1. Добавьте ссылку на репозиторий heroku git в качестве удаленного репозитория примера приложения, выполнив следующую команду:

<script src="https://gist.github.com/groupdocs-comparison-gists/bc2086fe645337ae3e27fa9778766208.js"></script>
    



Где «my-comparison-app-name» — это имя приложения, «heroku» — это просто имя, которое будет использоваться git для идентификации репозитория heroku git. Вы можете изменить его, но не забудьте новый.

2. Отправьте приложение на сервер Heroku.

<script src="https://gist.github.com/groupdocs-comparison-gists/11a09f4de71024831f9f931bd8e9621f.js"></script>
    



Вот `Demos/Ktor` путь к образцу, который вы хотите отправить. Корень пути — это корневой каталог проекта git примера. `heroku` — это имя из предыдущего шага, которое используется для идентификации репозитория heroku git. `master` — это ветка git в git-репозитории Heroku. Heroku развертывает только ветки master и main.
    



В результате команды образец будет загружен на сервер Heroku, и будет запущена сборка образца. Вы увидите результат сборки в командной строке. Все должно закончиться успешно. Если это так, просто откройте ссылку из шага 2 ([https://my-comparison-app-name.herokuapp.com/](https://my-comparison-app-name.herokuapp.com/)) в браузере, чтобы смотрите загруженное приложение. Чтобы проверить приложение, вы можете загрузить несколько файлов, используя интерфейс сравнения.

Вы можете управлять своими приложениями в Heroku [веб-интерфейс](https://dashboard.heroku.com/apps)

### Полезные команды

* Чтобы показать общую справку, используйте следующие команды

<script src="https://gist.github.com/groupdocs-comparison-gists/2227f67f2799830aafa784cb787a9c3e.js"></script>

* Чтобы показать справку по определенной команде, введите ее после слова `help`

<script src="https://gist.github.com/groupdocs-comparison-gists/2feb7810177c6918d9651e2a898ce3a7.js"></script>

* Чтобы показать журналы, используйте следующую команду (добавьте параметр `--tail`, чтобы отображать журналы в режиме реального времени)

<script src="https://gist.github.com/groupdocs-comparison-gists/8214014faef1b27e8e2279405b43093e.js"></script>

* Для доступа к удаленной файловой системе вы можете использовать следующую команду

<script src="https://gist.github.com/groupdocs-comparison-gists/5c46e7a117ec410deabd4e5d7a4abb60.js"></script>

Имейте в виду, что все изменения в удаленной файловой системе будут потеряны при перезапуске приложения.

* Чтобы перезапустить приложение, используйте следующие команды

<script src="https://gist.github.com/groupdocs-comparison-gists/fecb1c7111e46cc1d3c4cd8d912becd3.js"></script>

### Больше возможностей

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) — очень мощное и современное решение для сравнения различных файлов, документов и изображений, при этом его образцы совершенно бесплатны и открыты для модификации. Вы можете изменить их для работы с надстройками Heroku, например, с базами данных или хранилищами файлов. Образец Ktor имеет различные конфигурации (см. `comparer.conf`), которые доступны при установке переменных среды. Вы можете сделать это в веб-интерфейсе Heroku или из командной строки.

### Получите бесплатную лицензию API

Множество настроек сравнения, например, [генерация сводной страницы](/comparison/java/get-only-summary-page/), [чувствительность сравнения](/comparison/java/adjusting-comparison-sensitivity/) и т. д. , доступны только по лицензии. Вы можете получить [бесплатную временную лицензию](https://purchase.groupdocs.com/temporary-license), чтобы использовать API без оценочных ограничений.

### Вывод

Пример приложения Ktor для [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) — это всего лишь один пример использования [API GroupDocs.Comparison](https://products.groupdocs.com/comparison/ ) для сравнения документов Pdf, Word, Excel, презентаций PowerPoint, диаграмм, файлов САПР, изображений и многого другого [поддерживаемые форматы файлов](/comparison/java/supported-document-formats/). Дополнительные примеры использования GroupDocs.Comparison с Java и Kotlin можно найти на [странице GitHub] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). Чтобы получить более подробную информацию, варианты и примеры, вы можете просмотреть [документацию] (/comparison/java/getting-started/) и репозиторий [GitHub] (https://github.com/groupdocs-comparison). Свяжитесь с нами [на форуме] (https://forum.groupdocs.com/) для решения ваших вопросов.

### Смотрите также

* Как [сравнить документы](/comparison/java/how-to-compare-documents-in-the-easiest-way) самым простым способом
* Как [сравнить файлы AutoCad](/comparison/java/how-to-compare-autocad-drawings) в Java или Kotlin
* Как [сравнить файлы](/comparison/java/how-to-compare-files-in-java-or-kotlin) в Java или Kotlin
* Как [сравнивать изображения](/comparison/java/how-to-compare-images-using-java-or-kotlin) с помощью Java или Kotlin
* Как [развернуть пример сравнения Spring](/comparison/java/how-to-deploy-spring-comparison-sample-to-heroku-paas-platform) на платформе Heroku PaaS
* Как [использовать инструмент сравнения](/comparison/java/how-to-use-ktor-comparison-sample) с Ktor Framework

