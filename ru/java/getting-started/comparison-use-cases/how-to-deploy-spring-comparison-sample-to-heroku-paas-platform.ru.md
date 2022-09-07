---
id: как-развернуть-весенний-сравнительный-образец-на-платформу-героку-паас
url: comparison/java/how-to-deploy-spring-comparison-sample-to-heroku-paas-platform
title: "Как развернуть образец сравнения Spring на платформе Heroku PaaS"
weight: 21
description: "В статье описывается, как развернуть образец сравнения Spring на платформе Heroku PaaS."
keywords: "Spring Framework, сравнение документов, сравнение файлов с Kotlin, Paas, Heroku"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
имя: Электронная таблица, AutoCad, Image Comparer
        description: "Продукт позволяет сравнивать PowerPoint, Code, Image, AutoCad, Pdf, Word, Excel и многие другие документы."
код продукта: сравнение
Платформа продукта: Java
как:
название: Как развернуть проект Spring на Heroku
        description: "Узнайте, как развернуть пример проекта Comparison Spring на Heroku."
шаги:
- название: Системные требования
текст: Какие инструменты вам нужны для развертывания приложения на Heroku
- название: Получение примера приложения с GitHub
текст: Загрузка предварительно настроенного образца приложения для его развертывания
- название: Основные моменты проекта для развертывания на Heroku
текст: Основные вещи, которые необходимо настроить в проекте перед началом его развертывания
- название: Создание приложения Heroku
текст: Создание приложения в учетной записи Heroku, в которой будет развернут образец
- название: Развертывание примера приложения в Heroku
текст: Запуск команды для развертывания примера приложения и проверки того, что все работает
---

Одним из самых популярных решений для развертывания веб-приложений и веб-сайтов является PaaS (платформа как услуга). К счастью, [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) легко интегрируется с ними. В этой статье описывается, как можно развернуть сравнительный пример, разработанный с помощью Spring Framework, на одной из очень популярных платформ PaaS — Heroku. Сравнительный пример можно использовать и модифицировать совершенно бесплатно. Он доступен [на GitHub] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/68c3f01/Demos/Spring).

### Системные Требования

Следующие приложения должны быть установлены для развертывания образца на сервере Heroku.

1. `Heroku CLI` - инструмент для доступа к учетной записи Heroku (конечно, вам нужна учетная запись)
2. `Git` - инструмент для загрузки образца приложения и его развертывания на сервере Heroku.

### Получение примера приложения с GitHub

1. Откройте [страницу GitHub] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) с образцами [API GroupDocs.Comparison] (https://products.groupdocs.com/comparison/). Ява/)
2. С помощью зеленой кнопки «Код» в правом верхнем углу страницы скопируйте ссылку на репозиторий HTTPS.
3. Откройте терминал Linux или командную строку Windows и выполните следующую команду.

``` оболочка
клон git https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java.git
```

Команда загрузит проект с примерами из GitHub в ваш локальный каталог. Не закрывайте командную строку

### Основные моменты проекта для развертывания на Heroku

1. Профиль Maven для создания файла JAR настроен и активен по умолчанию.
2. Пример настройки для использования переменной среды PORT (файл configuration.yml). Это важно, потому что Heroku может менять порт при каждом запуске приложения.

<script src="https://gist.github.com/groupdocs-comparison-gists/2f55731e40bfc2db4b42e48c58f8faa6.js"></script>

3. Чтобы указать Heroku, как запускать приложение, был создан специальный файл (`Procfile`)

<script src="https://gist.github.com/groupdocs-comparison-gists/90a35cf6498755ae7672cb83cfbd4d73.js"></script>

4. Файл `system.properties` был создан для указания версии Java, необходимой нашему приложению.

<script src="https://gist.github.com/groupdocs-comparison-gists/387d00d93e8527292e71385fa0c22d0f.js"></script>

### Создание приложения Heroku

1. Запустите следующую команду, чтобы перейти в каталог образцов и войти в систему с учетной записью Heroku.

<script src="https://gist.github.com/groupdocs-comparison-gists/5846d06dbc8f5a099596e10531a1fc20.js"></script>

Последняя команда откроет веб-сайт Heroku, где вы должны войти в великий инструмент командной строки, чтобы получить доступ к своей учетной записи.

2. Используйте следующую команду для создания нового приложения Heroku.

<script src="https://gist.github.com/groupdocs-comparison-gists/549e2bd14bbff90c1a1e8c6be2b64053.js"></script>

Где my-spring-comparer — это имя приложения. Вы можете изменить его как хотите, но он должен быть уникальным. Результатом команды будет веб-адрес для доступа к вашему новому приложению и ссылка на репозиторий heroku git. Вот пример вывода командной строки:

``` оболочка
https://my-spring-comparer.herokuapp.com/ | https://git.heroku.com/my-spring-comparer.git
```

### Развертывание примера приложения в Heroku

1. Затем добавьте ссылку на репозиторий heroku в качестве удаленного репозитория примера приложения, используя следующую команду:

<script src="https://gist.github.com/groupdocs-comparison-gists/9b23f36cc6434900449e4906bed6d7cc.js"></script>
    



Где «my-spring-comparer» — это имя приложения Heroku, «heroku-spring» — это имя, которое будет использоваться git для идентификации репозитория heroku. Вы можете изменить его, но не забудьте новый.

2. Разверните приложение на сервере Heroku с помощью следующей команды.

<script src="https://gist.github.com/groupdocs-comparison-gists/cd1fc18b42f1c00841be0371c538385a.js"></script>
    



Вот `Demos/Spring` путь к образцу, который вы хотите отправить. Корень пути — это корневой каталог проекта git примера. `heroku-spring` — это имя репозитория heroku из предыдущего шага, которое используется для его идентификации. master — это ветка git в репозитории Heroku. На данный момент Heroku развертывает только ветки master и main.
    



Команда загрузит образец Spring на сервер Heroku и начнет его сборку. Вы увидите результат процесса сборки в командной строке. Все должно закончиться успешно. Если это так, просто откройте ссылку из шага 2 ([https://my-spring-comparer.herokuapp.com/](https://my-spring-comparer.herokuapp.com/)) в своем любимом браузере, чтобы просмотреть загруженные заявление. Чтобы проверить приложение, вы можете загрузить несколько файлов, используя Comparison UI.

Вы можете управлять своими приложениями в Heroku [веб-интерфейс](https://dashboard.heroku.com/apps)

### Полезные команды

* Используйте следующую команду, чтобы показать общую справку Heroku CLI

<script src="https://gist.github.com/groupdocs-comparison-gists/2227f67f2799830aafa784cb787a9c3e.js"></script>

* Чтобы показать справку по определенной команде, введите ее после слова `help`

<script src="https://gist.github.com/groupdocs-comparison-gists/2feb7810177c6918d9651e2a898ce3a7.js"></script>

* Чтобы просмотреть журналы определенного приложения, используйте следующую команду (добавьте параметр --tail для просмотра журналов в режиме реального времени)

<script src="https://gist.github.com/groupdocs-comparison-gists/1fb868756cff79b05bbb951dd620f842.js"></script>

* Доступ к удаленной файловой системе возможен с помощью следующей команды

<script src="https://gist.github.com/groupdocs-comparison-gists/1b7968ffc4805be2774ef9c33de252a3.js"></script>

Не забывайте, что все изменения в удаленной файловой системе будут потеряны при перезапуске приложения.

* Вы можете перезапустить приложение, используя следующую команду

<script src="https://gist.github.com/groupdocs-comparison-gists/be60e3092d9e2515423a621e01a1833a.js"></script>

### Больше возможностей

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) — это современное, полезное и очень мощное решение для сравнения различных документов, файлов и изображений, при этом его образцы можно использовать и открывать совершенно бесплатно. быть изменены. Вы можете изменить их для работы с надстройками Heroku, например, с базами данных или хранилищами файлов. Образец Spring имеет различные конфигурации (см. `configuration.yml`), которые доступны при установке переменных среды. Вы можете сделать это в веб-интерфейсе Heroku или из командной строки. Более того, в образце Spring есть реализации использования Google Drive API и Dropbox API в качестве источников файлов для сравнения. Чтобы узнать больше, см. [Интеграция API Google Диска](/comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api/) и [Интеграция API Dropbox](/ страницы сравнения/java/how-to-use-dropbox-api-as-files-source-for-comparison-api/)

### Получите бесплатную лицензию API

Множество настроек сравнения, например, [генерация сводной страницы](/comparison/java/get-only-summary-page/), [чувствительность сравнения](/comparison/java/adjusting-comparison-sensitivity/) и т. д. , доступны только по лицензии. Вы можете получить [бесплатную временную лицензию](https://purchase.groupdocs.com/temporary-license), чтобы использовать API без оценочных ограничений.

### Вывод

Образец приложения для сравнения, созданный с использованием Spring Framework в качестве ядра, является лишь одним из примеров использования [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) для сравнения документов Pdf, Word, Excel, презентаций PowerPoint, диаграмм , файлы САПР, изображения и многое другое [поддерживаемые форматы файлов](/comparison/java/supported-document-formats/). Дополнительные примеры использования GroupDocs.Comparison с Java и Kotlin можно найти на [странице GitHub] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). Чтобы получить более подробную информацию, варианты и примеры, вы можете просмотреть [документацию] (/comparison/java/getting-started/) и репозиторий [GitHub] (https://github.com/groupdocs-comparison). Свяжитесь с нами [на форуме] (https://forum.groupdocs.com/) для решения ваших вопросов.

### Смотрите также

* Как [сравнить документы](/comparison/java/how-to-compare-documents-in-the-easiest-way) самым простым способом
* Как [сравнить файлы AutoCad](/comparison/java/how-to-compare-autocad-drawings) в Java или Kotlin
* Как [развернуть образец Ktor] (comparison/java/how-to-deploy-ktor-comparison-sample-to-heroku-paas-platform) на платформу Heroku PaaS
* Как [сравнивать изображения](/comparison/java/how-to-compare-images-using-java-or-kotlin) с помощью Java или Kotlin
* Как [сравнить два или более файлов](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) в Java или Kotlin
* Как [разместить образец Dropwizard](/comparison/java/how-to-deploy-dropwizard-comparison-sample-to-heroku-paas-platform) на платформу Heroku PaaS

