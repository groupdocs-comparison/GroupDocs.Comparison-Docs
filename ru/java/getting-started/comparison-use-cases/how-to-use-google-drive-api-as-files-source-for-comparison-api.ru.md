---
id: как-использовать-google-drive-api-as-files-source-for-comparison-api
url: comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api
title: "Как использовать Google Drive API в качестве источника файлов для сравнения документов"
weight: 17
description: "В статье описывается способ использования API Google Диска в качестве источника файлов для API сравнения групповых документов."
keywords: "Сравнение документов, API Google Диска, Сравнение файлов с Диска Google, Инструмент сравнения с Java и API Диска Google"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
название: PowerPoint, Image и AutoCad Comparer
        description: "Продукт позволяет сравнивать файлы PowerPoint, Image и AutoCad."
код продукта: сравнение
Платформа продукта: Java
как:
название: Как использовать Google Drive API для выявления различий между файлами, изображениями или документами
        description: "Узнайте, как использовать API Google Диска для выявления различий между файлами, изображениями или документами в проектах Java или Kotlin."
шаги:
- название: Настройка Google API
текст: Описание шагов, необходимых для настройки API Google.
- название: Настройка проекта для использования API Google Диска с API сравнения
текст: Все необходимые конфигурации для использования Google Drive API и Comparison API в проекте.
- имя: Создание объектов API Google Диска
текст: Создание объекта службы для работы с Google Drive API
- имя: Получить список файлов с помощью Google Диска API
текст: подключитесь к Google Drive API и загрузите список файлов, хранящихся в нем.
- название: Сравнение документов непосредственно с Google Диска
текст: Сравните документы, которые хранятся в учетной записи Google Диска
---
В настоящее время облачные сервисы очень популярны. Это означает, что многие люди используют их для хранения документов, фотографий и других файлов. В этой ситуации вам может понадобиться возможность сравнивать файлы прямо с Google Диска, без необходимости загружать и сохранять их локально. Вы можете легко сделать это, объединив [API GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) вместе с API Google Диска.

### Настройка Google API

Чтобы использовать API Google, у вас должна быть учетная запись Google. Здесь мы не будем описывать, как его зарегистрировать. Вы можете узнать необходимые шаги на странице документации Google. Тем не менее, ниже приведены шаги, необходимые для использования Google Drive API в вашем проекте.

#### Создание проекта Google Cloud Platform и активация Drive API

1. Откройте [Панель инструментов Google Cloud Platform](https://console.cloud.google.com/apis/dashboard)
2. Нажмите «Выбрать проект», чтобы открыть список проектов.

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_1.png)

3. Чтобы создать проект, нажмите «НОВЫЙ ПРОЕКТ».

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_2.png)

4. Введите имя проекта и нажмите «Создать».

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_3.png)

5. Нажмите «Включить API и службы», чтобы включить API Google Диска.

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_4.png)

6. Найдите «Google Диск API», выберите его и нажмите «Включить» на открывшейся странице.

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_5.png)

#### Создание экрана согласия

1. Откройте страницу [Учетные данные](https://console.cloud.google.com/apis/credentials) и проверьте правильность выбранного проекта.
2. Нажмите «Создать учетные данные» и выберите «Идентификатор клиента OAuth».

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_6.png)

3. Нажмите кнопку «Настроить экран согласия».
4. Выберите «Тип пользователя» и нажмите «Создать».

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_7.png)

5. Заполните «Информация о приложении» и нажмите «Сохранить и продолжить».
6. Нажмите «Добавить или удалить области», чтобы настроить области учетных данных.

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_8.png)

7. На экране «Обновить выбранные области» проверьте необходимые области. Вы можете использовать фильтры для поиска областей. После выбора всех необходимых областей нажмите кнопку «Обновить».

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_9.png)

8. Нажмите «Сохранить и продолжить», чтобы перейти к следующему шагу.
9. Добавьте пользователей с помощью кнопки «Добавить пользователей» и нажмите «Сохранить и продолжить».
10. Нажмите «Вернуться к приборной панели», чтобы завершить настройку.

#### Создание учетных данных API Google Диска

1. Откройте страницу [Учетные данные](https://console.cloud.google.com/apis/credentials) и проверьте правильность выбранного проекта.
2. Нажмите «Создать учетные данные» и выберите «Идентификатор клиента OAuth».

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_6.png)

3. Выберите тип приложения «Настольное приложение», введите его имя и нажмите «Создать».

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_10.png)

4. Теперь скопируйте и сохраните свой «Идентификатор клиента», «Секрет клиента» и, конечно же, загрузите и сохраните файл JSON, который будет использоваться для доступа к API Google Диска.

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_11.png)

### Настройка проекта для использования API Google Диска с API сравнения

Чтобы использовать Google Drive API в качестве файлового хранилища Comparison API, вам необходимо добавить в проект некоторые библиотеки и репозиторий.

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

<script src="https://gist.github.com/groupdocs-comparison-gists/513c0cf2cf6ec736df038122fe7389a3.js"></script>

</details>
<details><summary>Грейдл</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/7af8c044d34a45f5858667bd3b8a05c8.js"></script>

</details>
<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/22abc7b8e5548ad0f240b604f7092516.js"></script>

</details>
</blockquote></details>

### Создание объектов API Google Диска

Во-первых, нам нужна фабрика JSON, которая будет использоваться для связи с сервером Google.

<script src="https://gist.github.com/groupdocs-comparison-gists/0853a71cd95b079fe683eac607e7fa3a.js"></script>

Во-вторых, нам нужно создать транспортный объект

<script src="https://gist.github.com/groupdocs-comparison-gists/844c3077a831fc8dee4485ef8302c79d.js"></script>

После этого мы должны создать объект секретов клиента. Это место, где мы будем использовать файл json, который был загружен после создания учетных данных API.

<script src="https://gist.github.com/groupdocs-comparison-gists/139ac242d9a5af46ac70de236cfa9402.js"></script>

Следующим шагом является создание потока авторизации, который будет использоваться для запроса авторизации. Немного подробностей о вариантах:
* `DriveScopes.DRIVE` — это область, которая была включена при создании учетных данных API.
* `"/Path/To/Directory/To/Save/Tokens"` — каталог tokens необходим для сохранения токенов авторизации. Вы можете удалить эту строку, но таким образом Google API будет каждый раз запрашивать авторизацию.

<script src="https://gist.github.com/groupdocs-comparison-gists/a4ee3fdba7423db24797967851f16b56.js"></script>

Теперь мы будем запрашивать авторизацию. Откроется страница авторизации Google в веб-браузере по умолчанию, где вы можете получить доступ к приложению. Дополнительную информацию можно найти на странице документации Google.

<script src="https://gist.github.com/groupdocs-comparison-gists/cf913a2f12e3f2233b5f4b9e8cc98654.js"></script>

Наконец, мы создаем объект, который будет использоваться для доступа к файлам Google Диска.

<script src="https://gist.github.com/groupdocs-comparison-gists/c767f20a31dede6afd5412013908016d.js"></script>

### Получить список файлов с помощью Google Drive API

Чтобы распечатать список файлов, которые находятся на вашем Google Диске, выполните следующий код

<script src="https://gist.github.com/groupdocs-comparison-gists/362c635862024863ac606182e3e62a3c.js"></script>

Вот пример вывода:

```shell
- 1hRgws-lLWMlloSZioaVpKJGKt687KHL7  GroupDocs_Demo.pdf (51911 bytes)
- 22k0Uyt_bBoN96LJhL3iKlKHlhLKjhw2O  GroupDocs_Demo_Word.docx (12044 bytes)
- 33Kk0yt_bBoN96LJhL3iKlKHlhLKjhw2O  GroupDocs_Demo_Word.docx (12044 bytes)
- 80UMm8vRQ637H7hJHkjHKh7JKJL96tm56  GroupDocs_Demo_Image.png (78398 bytes)
- 1qwRjo4Nu0LKHlLhlLKjlk798761tuFJP  GroupDocs_Demo_Photo.jpg (3186063 bytes)
```

В выводе каждая строка представляет собой один файл. Это ID, имя и размер. Вы можете использовать эту информацию для показа файлов пользователю. Есть много данных, которые можно получить для каждого файла. Дополнительную информацию можно найти на странице документации Google. Для приведенных ниже примеров кода мы будем использовать два из приведенных выше идентификаторов. **Имейте в виду**, ваши файлы будут иметь другие идентификаторы, поэтому при запуске кода ниже не забудьте изменить идентификаторы.

### Сравнение документов непосредственно с Google Диска

[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java/) — это современная, мощная и гибкая библиотека, которую можно использовать в любых Java, Kotlin или других совместимых с Java проектах. Вы можете использовать его для сравнения документов Word, Excel, презентаций, фотографий, изображений, диаграмм, файлов кода и других [поддерживаемых форматов файлов](/comparison/java/supported-document-formats/). Библиотека сравнения имеет множество настроек, таких как создание сводной страницы, принятие/отклонение изменений, сравнение более двух документов (множественное сравнение), создание изображений предварительного просмотра документов, изменение чувствительности сравнения и изменение стилей выделения. Дополнительную информацию о настройках можно найти в [документации](/comparison/java/getting-started/). На нашей [странице GitHub] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) вы можете найти примеры интеграции библиотеки Comparison с различными фреймворками, такими как Spring, Dropwizard, Kotlin Compose Desktop и т. д. .

#### Сохранение результирующего документа локально

Вы можете легко сравнить два документа, которые находятся на вашем Google Диске, сохраняя результирующий документ локально или сохраняя его в поток Java, и использовать его по своему усмотрению. **Имейте в виду**, что «1ZSDTUZArzuwYab0GUbXEoSX_b9kt2mk0» и «1mKk0yt_bBoN9K9mm-3iGXLxfTzkrdw2O» — это идентификаторы, полученные на предыдущих шагах. Для вас они будут другими.

<script src="https://gist.github.com/groupdocs-comparison-gists/0dd5de335fee2e1f78dc8c4c82299010.js"></script>

В консоли вывода вы увидите путь к результирующему документу.

#### Сохранение результирующего документа на Google Диске

Ниже вы можете увидеть код, который будет сравнивать документы прямо с Google Диска. Выходные файлы будут загружены на Google Диск без локального сохранения. После этого вы можете открыть страницу Google Диска в веб-браузере и просмотреть результирующий документ, например, с помощью Google Docs.

<script src="https://gist.github.com/groupdocs-comparison-gists/d067df3bf323e06d468952af2b7b335b.js"></script>

В консоли вывода вы увидите ID, имя и размер загруженного документа.

### Получите бесплатную лицензию API

Многие настройки, такие как сводная страница, чувствительность сравнения и т. д., доступны только при наличии лицензии. Вы можете получить [бесплатную временную лицензию](https://purchase.groupdocs.com/temporary-license), чтобы использовать API без оценочных ограничений.

### Вывод

Читая эту статью, вы узнали, как использовать API Google Диска в качестве файлового хранилища для библиотеки [GroupDocs.Comparison](https://products.groupdocs.com/comparison/), которая дает вам массу возможностей. Вы можете найти примеры использования API Google Диска в приложениях Spring и Dropwizard на [странице GitHub] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java), которые вы можете изменить и использовать в качестве ядра ваше собственное приложение для сравнения фотографий, файлов кода, PowerPoint, Excel, Word и других [поддерживаемых форматов файлов](/comparison/java/supported-document-formats/).

Дополнительные сведения, варианты и примеры можно найти в [документации](/comparison/java/getting-started/) и репозитории [GitHub](https://github.com/groupdocs-comparison). Свяжитесь с нами [на форуме] (https://forum.groupdocs.com/) для решения ваших вопросов.

### Смотрите также

* Как [сравнить документы](/comparison/java/how-to-compare-documents-in-the-easiest-way) самым простым способом
* Как [сравнить файлы](/comparison/java/how-to-compare-files-in-java-or-kotlin) в Java или Kotlin
* Как [сравнивать изображения](/comparison/java/how-to-compare-images-using-java-or-kotlin) с помощью Java или Kotlin
* Как [сравнить текст, Word или PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) в Java или Kotlin
* Как [сравнить два или более файлов](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) в Java или Kotlin
* How to [use Dropbox API as files source](/comparison/java/how-to-use-dropbox-api-as-files-source-for-comparison-api) for comparing documents in Java or Kotlin
