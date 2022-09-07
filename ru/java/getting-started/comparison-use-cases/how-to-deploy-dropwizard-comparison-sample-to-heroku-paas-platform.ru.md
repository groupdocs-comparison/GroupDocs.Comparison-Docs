---
id: как-развернуть-сбросить-мастер сравнения-образца-на-платформу-героку-паас
url: comparison/java/how-to-deploy-dropwizard-comparison-sample-to-heroku-paas-platform
title: "Как развернуть сравнительный образец Dropwizard на платформе Heroku PaaS"
weight: 22
description: "В статье описывается процесс развертывания сравнительного примера Dropwizard на платформе Heroku PaaS."
keywords: "Dropwizard Framework, Сравнение документов с Java или Kotlin, Платформа как услуга, Paas, Heroku"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
название: Pdf, PowerPoint, компаратор Word
        description: "Продукт позволяет сравнивать PDF, Word, Excel, PowerPoint, Code, Image, AutoCad и многие другие документы."
код продукта: сравнение
Платформа продукта: Java
как:
название: Как развернуть проект Dropwizard на Heroku
        description: "Узнайте, как развернуть пример проекта Comparison Dropwizard на Heroku"
шаги:
- название: Системные требования
текст: Какие инструменты вам нужны для развертывания приложения на Heroku
- название: Получение примера приложения с GitHub
текст: Загрузка предварительно настроенного образца приложения для его развертывания
- имя: Общие моменты в проекте для развертывания в Heroku
текст: Основные вещи, которые необходимо настроить в проекте перед началом его развертывания
- название: Создание приложения Heroku
текст: Создание приложения в учетной записи Heroku, в которой будет развернут образец
- название: Развертывание примера приложения в Heroku
текст: Запуск команды для развертывания примера приложения и проверки того, что все работает
---

Есть много способов опубликовать приложение. Одним из самых популярных среди них является развертывание веб-сайтов или веб-приложений с помощью PaaS (платформа как услуга). К счастью, [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) легко интегрируется с ними. Эта статья посвящена развертыванию сравнительного примера приложения, разработанного с помощью Dropwizard Framework, на Heroku — очень популярных платформах PaaS. Образец приложения для сравнения можно использовать и модифицировать совершенно бесплатно. Он доступен [на GitHub] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/68c3f01/Demos/Dropwizard).

### Системные Требования

Перед развертыванием образца на сервере Heroku важно установить следующие приложения.

1. `Heroku CLI` - инструмент для создания приложения в учетной записи Heroku (конечно, вам нужна учетная запись)
2. `Git` - инструмент для работы с репозиторием примеров приложений и его развертывания на сервере Heroku.

### Получение примера приложения с GitHub

1. Откройте [страницу GitHub] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) с образцами [API GroupDocs.Comparison] (https://products.groupdocs.com/comparison/). Ява/)
2. В правом верхнем углу страницы есть зеленая кнопка «Код», щелкните ее и скопируйте ссылку на репозиторий HTTPS.
3. Откройте терминал Linux или командную строку Windows и выполните следующую команду.

``` оболочка
клон git https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java.git
```

После этого проект с примерами с GitHub будет загружен в вашу локальную директорию. Не закрывайте командную строку


### Общие моменты в проекте для развертывания на Heroku

1. Пример настройки для использования переменной среды PORT (файл configuration.yml). Это необходимо сделать, потому что Heroku может менять порт при каждом запуске приложения.

<script src="https://gist.github.com/groupdocs-comparison-gists/03c23b58c3448dd517029a37d3f1118d.js"></script>

2. Чтобы Heroku знал, как запускать приложение, был создан специальный файл (`Procfile`).

<script src="https://gist.github.com/groupdocs-comparison-gists/6c193c0ab14440ef6265018b54e2956e.js"></script>

3. Файл `system.properties` был создан для указания версии Java, необходимой приложению.

<script src="https://gist.github.com/groupdocs-comparison-gists/387d00d93e8527292e71385fa0c22d0f.js"></script>

### Создание приложения Heroku

1. Запустите следующую команду, чтобы перейти в каталог образцов и запустить процесс входа в систему.

<script src="https://gist.github.com/groupdocs-comparison-gists/5846d06dbc8f5a099596e10531a1fc20.js"></script>

Страница Heroku будет открыта в браузере, где вы должны войти в систему, чтобы инструмент командной строки имел доступ к вашей учетной записи.

2. Запустите команду ниже, чтобы создать новое приложение Heroku.

<script src="https://gist.github.com/groupdocs-comparison-gists/70a482acde3a286d42a34939019c0a95.js"></script>

Где my-dropwizard-comparer — это имя нового приложения. Вы вольны изменить его как хотите, единственное - он должен быть уникальным. Результатом команды является веб-адрес для доступа к вашему новому приложению и ссылка на репозиторий heroku git. Ниже приведен пример вывода результата командной строки:

``` оболочка
https://my-dropwizard-comparer.herokuapp.com/ | https://git.heroku.com/my-dropwizard-comparer.git
```

### Развертывание примера приложения в Heroku

1. Затем добавьте ссылку на репозиторий heroku в качестве «удаленного» в репозиторий примера приложения, используя команду ниже.

<script src="https://gist.github.com/groupdocs-comparison-gists/bf5d9c5d71cdd1a4a7fdd52ee552942a.js"></script>
    



Где «my-dropwizard-comparer» — это имя приложения Heroku, а «heroku-dropwizard» — идентификатор репозитория heroku. Вы можете изменить его, но не забудьте новый.

2. Разверните приложение на сервере Heroku, используя приведенную ниже команду.

<script src="https://gist.github.com/groupdocs-comparison-gists/f605188b333f3ae13f048837f89892f4.js"></script>
    



Вот `Demos/Dropwizard` путь к образцу, который вы хотите отправить. Это относительно, начинается с git root образца. `heroku-dropwizard` — это идентификатор репозитория heroku из предыдущего шага. master — это ветка git в репозитории Heroku. На данный момент Heroku развертывает только ветки master и main.
    



Команда загрузит образец Dropwizard на сервер Heroku и начнет его сборку. Вы увидите результат процесса сборки в командной строке. Все должно закончиться успешно. Если это так, просто откройте ссылку из шага 2 ([https://my-dropwizard-comparer.herokuapp.com/](https://my-dropwizard-comparer.herokuapp.com/)) в своем любимом браузере, чтобы увидеть Приложение, которое было загружено. Чтобы проверить приложение, вы можете загрузить несколько файлов с помощью пользовательского интерфейса сравнения.

Для управления приложениями вы можете использовать Heroku [веб-интерфейс](https://dashboard.heroku.com/apps)

### Полезные команды

* Приведенная ниже команда покажет общую справку Heroku CLI.

<script src="https://gist.github.com/groupdocs-comparison-gists/2227f67f2799830aafa784cb787a9c3e.js"></script>

* Чтобы увидеть справку по определенной команде, введите ее после слова `help`

<script src="https://gist.github.com/groupdocs-comparison-gists/2feb7810177c6918d9651e2a898ce3a7.js"></script>

* Чтобы просмотреть журналы определенного приложения, просто выполните следующую команду (вы можете добавить параметр --tail для отображения журналов в режиме реального времени)

<script src="https://gist.github.com/groupdocs-comparison-gists/4984f5d703b956cb9c2db0193dfdcea3.js"></script>

* Легко получить доступ к команде запуска удаленной файловой системы ниже

<script src="https://gist.github.com/groupdocs-comparison-gists/eb2c27b5111502e256b121fae24f50ad.js"></script>

Примечание: все изменения в удаленной файловой системе будут потеряны при перезапуске приложения.

* Чтобы перезапустить приложение, используйте команду ниже

<script src="https://gist.github.com/groupdocs-comparison-gists/f06a5c8ad2cd9c1d7313459d96abccce.js"></script>

### Больше возможностей

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) — это не только современное, но и мощное решение для сравнения различных документов, изображений и других файлов. В то же время сравнительные образцы полностью бесплатны для использования и могут быть изменены. Вы можете обновить их для работы с надстройками Heroku, например, с базами данных или хранилищами файлов. Образец Dropwizard имеет множество опций (см. `configuration.yml`), которые доступны при установке переменных среды. Их легко изменить в веб-интерфейсе Heroku или с помощью командной строки. Кроме того, образец Dropwizard имеет встроенное решение для использования Google Drive API или Dropbox API в качестве хранилища файлов для сравнения. Чтобы узнать больше, см. [Интеграция API Google Диска](/comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api/) и [Интеграция API Dropbox](/ страницы сравнения/java/how-to-use-dropbox-api-as-files-source-for-comparison-api/)

### Получите бесплатную лицензию API

Множество настроек сравнения, например, [генерация сводной страницы](/comparison/java/get-only-summary-page/), [чувствительность сравнения](/comparison/java/adjusting-comparison-sensitivity/) и т. д. , доступны только по лицензии. Вы можете получить [бесплатную временную лицензию](https://purchase.groupdocs.com/temporary-license), чтобы использовать API без оценочных ограничений.

### Вывод

Образец приложения для сравнения, созданный с помощью Dropwizard Framework, является лишь одним из примеров использования [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) для сравнения PDF, Word, электронных таблиц Excel, презентаций PowerPoint, диаграмм, файлов САПР, Файлы OpenOffice, изображения и многое другое [поддерживаемые форматы файлов](/comparison/java/supported-document-formats/). Вы можете найти больше примеров использования GroupDocs.Comparison с Java и Kotlin на [странице GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). Дополнительные сведения, параметры и примеры см. в [документации](/comparison/java/getting-started/) и репозитории [GitHub](https://github.com/groupdocs-comparison). Свяжитесь с нами [на форуме] (https://forum.groupdocs.com/) для решения ваших вопросов.

### Смотрите также

* Как [сравнить документы](/comparison/java/how-to-compare-documents-in-the-easiest-way) самым простым способом
* Как [сравнить файлы AutoCad](/comparison/java/how-to-compare-autocad-drawings) в Java или Kotlin
* Как [развернуть образец Ktor] (comparison/java/how-to-deploy-ktor-comparison-sample-to-heroku-paas-platform) на платформу Heroku PaaS
* Как [сравнивать изображения](/comparison/java/how-to-compare-images-using-java-or-kotlin) с помощью Java или Kotlin
* Как [сравнить два или более файлов](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) в Java или Kotlin
* Как [развернуть образец Spring](/comparison/java/how-to-deploy-spring-comparison-sample-to-heroku-paas-platform) на платформу Heroku PaaS

