---
id: как использовать дропбокс-api-as-files-source-for-comparison-api
url: comparison/java/how-to-use-dropbox-api-as-files-source-for-comparison-api
title: "Как использовать Dropbox API в качестве источника файлов для Comparison API"
weight: 18
description: "В статье описывается способ использования API Dropbox в качестве источника файлов для API сравнения GroupDocs."
keywords: "Сравнение документов, API Dropbox, сравнение файлов из Dropbox, инструмент сравнения с Java и API Dropbox"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
название: компаратор PDF, Excel и Word
        description: "Продукт позволяет сравнивать документы Pdf, Excel и Word с помощью API DropBox."
код продукта: сравнение
Платформа продукта: Java
как:
название: Как использовать API DropBox для выявления различий в документах
        description: "Узнайте, как использовать API DropBox для выявления различий в документах в проектах Java или Kotlin."
шаги:
- название: Настройка API Dropbox
текст: Описание шагов, необходимых для настройки Dropbox API.
- название: Настройка проекта для использования API Dropbox с API сравнения
текст: Все необходимые конфигурации для использования Dropbox API и Comparison API в проекте.
- название: Создание объектов API Dropbox
текст: Создать объект Client для работы с Dropbox API
- имя: Получить список файлов с помощью Dropbox API
текст: подключитесь к Dropbox API и загрузите список файлов, хранящихся в нем.
- название: Сравнение документов напрямую из Dropbox
текст: Сравните документы, которые хранятся в учетной записи Dropbox
---
В настоящее время облачные сервисы пользуются большой популярностью. Поэтому многие люди используют их в качестве хранилища для фотографий, изображений, документов и других файлов. Таким образом, вам может понадобиться возможность сравнивать документы прямо из Dropbox, не скачивая и не сохраняя их локально. Вы можете легко сделать это, используя [API GroupDocs.Comparison](https://products.groupdocs.com/comparison) вместе с API Dropbox.

### Настройка API Dropbox

Для подготовки к использованию Dropbox API у вас должна быть учетная запись Dropbox. Зарегистрироваться очень просто. Вы можете узнать необходимые шаги на странице документации Dropbox. Тем не менее, ниже приведены шаги, которые необходимо выполнить перед использованием Dropbox API.

#### Создание приложения Dropbox

1. Откройте [Консоль приложений Dropbox] (https://www.dropbox.com/developers/apps).
2. Нажмите «Создать приложение», чтобы создать новое приложение.

   ![](/comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_1.png)

3. Выберите «API ограниченного доступа».

   ![](/comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_2.png)

4. Затем выберите «Папка приложения» (вы можете выбрать «Полный ящик», чтобы предоставить приложению доступ ко всем вашим файлам).

   ![](/comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_3.png)

5. Наконец, введите имя приложения и нажмите «Создать приложение».

   ![](/comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_4.png)

#### Обновление настроек Dropbox API

1. Прежде всего, откройте вкладку «Разрешения» и выберите следующие разрешения.

1. файлы.метаданные.запись
2. файлы.метаданные.чтение
3. файлы.содержимое.записать
4. файлы.содержимое.читать
   

**Не забудьте** нажать кнопку «Отправить», чтобы сохранить изменения

   ![](/comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_5.png)

2. После сохранения изменений вернитесь на вкладку «Настройки» и сгенерируйте токен доступа, нажав кнопку «Создать».

   ![](/comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_6.png)

**Имейте в виду**, что после любых изменений разрешений вы должны сгенерировать новый токен, старый **не будет** автоматически обновляться в соответствии с изменениями разрешений.

4. Вот собственно и все. Токен — это единственное, что вам нужно для доступа к вашим файлам Dropbox. Сохраните токен где-нибудь, мы будем использовать его позже.

### Настройка проекта для использования API Dropbox с API сравнения

Чтобы использовать API Dropbox в качестве файлового хранилища для сравнения документов, необходимо добавить в проект некоторые библиотеки и репозиторий.

<details open><summary>Подключить репозиторий GroupDocs</summary><blockquote>
<details open><summary>Мавен</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/9de00b81ae5dd326fc85fecb5c1220a6.js"></script>

</details>
<details><summary>Грейдл</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/15f77ae825f310acd9cad555dcea0019.js"></script>

</details>
<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/ad7ad48d4e7f9f60e858c7ba546f3745.js"></script>

</details>
</blockquote></details>

<details open><summary>Библиотеки</summary><blockquote>
<details open><summary>Мавен</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/6dbf6684650c250c88ae1a583454a99e.js"></script>

</details>
<details><summary>Грейдл</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/391a5a558c5a2a38d5d5da9349c8a1d5.js"></script>

</details>
<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/092c23f2daabd4a481d47d686a36deeb.js"></script>

</details>
</blockquote></details>

### Создание объектов Dropbox API

На самом деле начать работать с Dropbox API очень просто.

<script src="https://gist.github.com/groupdocs-comparison-gists/71e514fc974faa424f41cc1626501a88.js"></script>

Где:
1. `mycompany/best-comparison-app` - это просто идентификатор, который вы увидите в логах сайта Dropbox
2. ВАШ ТОКЕН ДОСТУПА - здесь должен быть токен доступа, который был сгенерирован ранее

### Получить список файлов с помощью Dropbox API

Чтобы распечатать список файлов, которые находятся в каталоге вашего приложения Dropbox, запустите следующий код (не забудьте загрузить некоторые файлы через веб-страницу Dropbox, потому что каталог приложения по умолчанию пуст)

<script src="https://gist.github.com/groupdocs-comparison-gists/6f450d94c73366d1b9bd54d8275763a9.js"></script>

Вот пример вывода:

```shell
- /target.pdf  target.pdf (390069 bytes)
- /source.pdf  source.pdf (767524 bytes)
```

В выводе каждая строка представляет собой один файл. Это путь, имя и размер. Вы можете использовать эту информацию для отображения списка файлов. Для каждого файла можно получить больше данных. Дополнительную информацию можно найти на странице документации Dropbox. **Имейте в виду**, приведенный выше код является лишь примером. Есть нумерация страниц, которую нужно обработать, чтобы получить все файлы.

### Сравнение документов прямо из Dropbox

[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java/) — это гибкая, мощная и современная библиотека, которую можно использовать в любых Java, Kotlin или других совместимых с Java проектах для сравнения Word, Excel , документы PowerPoint, фотографии, изображения, диаграммы, файлы кода и многое другое [поддерживаемые форматы файлов](/comparison/java/supported-document-formats/). Comparison API содержит множество гибких настроек, например: принятие/отклонение изменений, создание сводной страницы, создание изображений для предварительного просмотра документа, сравнение более двух документов (множественное сравнение), изменение чувствительности сравнения и изменение стилей выделения. Подробнее о настройках читайте в [документации](/comparison/java/getting-started/). На нашей [странице GitHub] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) вы можете найти различные примеры использования библиотеки сравнения с различными фреймворками, такими как Dropwizard, Spring, Kotlin Compose Desktop и т. д. на.

#### Сохранение результирующего документа на локальный диск

Легко сравнить два документа из вашего Dropbox, сохранив результирующий документ на локальном диске или записав его в поток вывода Java, чтобы использовать его где угодно.

<script src="https://gist.github.com/groupdocs-comparison-gists/3a031da813381a949f5b9fed868fb9ec.js"></script>

В консоли вывода вы увидите путь к результирующему документу.

#### Сохранение полученного документа в Dropbox

Ниже вы можете увидеть, как сравнивать документы напрямую из Dropbox с загрузкой результирующего документа в Dropbox без его локального сохранения. После этого вы можете открыть Dropbox в веб-браузере и найти результирующий документ.

<script src="https://gist.github.com/groupdocs-comparison-gists/8c95ba602a127dee49d98bb0f756f987.js"></script>

В консоли вывода вы увидите путь к загруженному документу.

### Получите бесплатную лицензию API

Большинство настроек, например генерация итоговой страницы, чувствительность сравнения и т. д., доступны только при наличии лицензии. Вы можете получить [бесплатную временную лицензию](https://purchase.groupdocs.com/temporary-license), чтобы использовать API без оценочных ограничений.

### Вывод

В этой статье был показан способ использования API Dropbox в качестве источника документов для библиотеки [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/), которую вы можете использовать в своем собственном проекте. Примеры использования Dropbox API внутри приложений Spring и Dropwizard можно найти на [странице GitHub] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). Они доступны для модификации и использования в качестве ядра вашего собственного приложения для сравнения фотографий, Excel, Word, файлов кода, презентаций PowerPoint и других [поддерживаемых форматов файлов](/comparison/java/supported-document-formats/).

Дополнительные сведения, варианты и примеры можно найти в [документации](/comparison/java/getting-started/) и репозитории [GitHub](https://github.com/groupdocs-comparison). Свяжитесь с нами [на форуме] (https://forum.groupdocs.com/) для решения ваших вопросов.

### Смотрите также

* Как [сравнить документы](/comparison/java/how-to-compare-documents-in-the-easiest-way) самым простым способом
* Как [использовать инструмент сравнения](/comparison/java/how-to-use-ktor-comparison-sample) с Ktor Framework
* Как [сравнивать изображения](/comparison/java/how-to-compare-images-using-java-or-kotlin) с помощью Java или Kotlin
* Как [сравнить текст, Word или PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) в Java или Kotlin
* Как [сравнить два или более файлов](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) в Java или Kotlin
* How to [use Google Drive API as files source](/comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api) for comparing documents in Java or Kotlin
