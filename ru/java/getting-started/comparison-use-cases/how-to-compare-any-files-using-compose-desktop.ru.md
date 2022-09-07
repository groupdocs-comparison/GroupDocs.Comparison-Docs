---
id: как-сравнить-любые-файлы-используя-составить-рабочий стол
url: comparison/java/how-to-compare-any-files-using-compose-desktop
title: "Как сравнить любые файлы в приложении Kotlin Compose Desktop"
weight: 12
description: "Статья посвящена использованию API сравнения в приложении Kotlin Compose."
keywords: "Сравните любые файлы или документы, различия файлов, инструмент Diff в Kotlin Compose"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
имя: Сравнить текст
        description: "Продукт позволяет сравнивать текстовые или любые другие файлы"
код продукта: сравнение
Платформа продукта: Java
как:
название: Как сравнить текст в проекте Kotlin Compose
        description: "Узнайте, как сравнивать текст или любые другие файлы в проекте Kotlin Compose."
шаги:
- имя: Загрузить исходный текст или файл
text: создать экземпляр класса Comparer, передающий исходный текст или путь к файлу в качестве параметра конструктора.
- имя: Загрузить целевой текст или файл
текст: добавьте один или несколько целевых текстов или файлов, чтобы сравнить их с исходным
- имя: Сравните исходный и целевой текст или файлы
текст: Запустить процесс сравнения, передав путь, где будет сохранен результат сравнения
---

В этой статье мы обсудим, как использовать приложение [GroupDocs.Comparison](https://products.groupdocs.com/comparison) API Compose Desktop с Kotlin. Прочитав эту статью, вы без труда сможете создать настольное приложение для сравнения, которое можно будет запускать на любой настольной платформе, такой как Windows, Linux или Mac. Kotlin Compose — это современный и быстро набирающий популярность UI-фреймворк. Обычно (*на данный момент*) используется для создания приложений для Android, но также поддерживает создание настольных, веб-приложений и мультиплатформенных приложений. В этой статье мы не будем подробно описывать, как пользоваться Compose, так как информации в интернете предостаточно.

## API сравнения файлов для Kotlin

В этой статье я буду использовать [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) вместе с Kotlin для создания настольного приложения. Наряду с наиболее часто используемыми форматами изображений, такими как PNG, JPG/JPEG и GIF, существует широкий спектр [поддерживаемых форматов файлов](/comparison/java/supported-document-formats/) для сравнения. Кроме того, API позволяет сравнивать текстовые документы, электронные таблицы, презентации, рисунки, веб-страницы, сообщения электронной почты, файлы исходного кода и многое другое. Кроме того, библиотеку сравнения можно использовать для создания изображений предварительного просмотра для любого из [поддерживаемых форматов файлов](/comparison/java/supported-document-formats/) для их отображения в вашем приложении.

## Создать и настроить проект Compose

### Создание проекта

Вы можете легко создать проект Compose, выбрав опцию «Kotlin» -> «Compose Desktop Aplication» в окне создания проекта IntelliJ Idea. Вам нужно будет выбрать имя проекта, местоположение, «Система сборки» (рекомендуется Gradle Kotlin) и «Project JDK» (рекомендуется 15 или выше).

### Настройка проекта путем добавления репозитория и библиотеки GroupDocs.Comparison

Чтобы добавить Comparison API в свой проект, выполните следующие действия:
1. Откройте `build.gradle.kts`
2. Перейдите в блок `repositories` и добавьте в него репозиторий Maven GroupDocs.

<script src="https://gist.github.com/groupdocs-comparison-gists/ad7ad48d4e7f9f60e858c7ba546f3745.js"></script>

3. Перейдите в блок `dependencies` и добавьте библиотеку GroupDocs.Comparison в качестве зависимости (*рекомендуется использовать [последнюю версию](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/ repo/com/groupdocs/groupdocs-comparison) библиотеки*)

<script src="https://gist.github.com/groupdocs-comparison-gists/b20a9f70c3442ca586a95b00a778a464.js"></script>

4. Обновите библиотеки проектов, нажав кнопку «Обновить все проекты Gradle» на панели «Gradle» IDE.

Теперь вы можете работать с Comparison API в проекте

## Добавление базовой функциональности сравнения

Чтобы иметь возможность сравнивать файлы в настольном приложении, вам потребуются некоторые базовые элементы пользовательского интерфейса и функциональные возможности. По крайней мере, должны быть кнопки для выбора исходного и целевого документов, которые будут сравниваться. Также вам нужна кнопка, которая будет запускать процесс сравнения.

### Основные элементы пользовательского интерфейса

Во-первых, создайте переменные, в которых вы будете хранить пути к исходному и целевому документам. Причину использования `mutableStateOf` и `remember` можно найти в документации по Compose.

```kotlin
    val sourcePath = remember { mutableStateOf<String?>(null) }
    val targetPath = remember { mutableStateOf<String?>(null) }
```

Кнопка «Добавить» для выбора исходного файла для сравнения. Вторая кнопка будет выглядеть так же, просто измените текст и переменную. Было бы неплохо окружить их Compose `Row` или `Column` и добавить некоторые визуальные стили.

<script src="https://gist.github.com/groupdocs-comparison-gists/542ddc34f70deb8cbcfca719d3900605.js"></script>

Добавить кнопку для запуска процесса сравнения

<script src="https://gist.github.com/groupdocs-comparison-gists/d28868d161134606a3aa62d8542f58d3.js"></script>

### Дополнительные функции приложения

Для выбора документов вашему приложению необходим диалог выбора файлов. Пока в Compose нет своих диалогов, но не забывайте, что мы все еще на Java. Таким образом, мы можем использовать стандартный класс Java `JFileChooser`.

<script src="https://gist.github.com/groupdocs-comparison-gists/caa93da30f5babc0966765cc58ffb95a.js"></script>

Эта функция откроет диалоговое окно для выбора файла, а затем установит путь к файлу в качестве изменяемого состояния параметра. JFileChooser можно настроить для фильтрации файлов по формату, установки начального каталога и так далее.

### Использование Comparison API для получения различий документа

Comparison API имеет множество функций и настроек, но мы будем использовать только несколько процентов, чтобы не усложнять эту статью. Сравнить файлы и получить результат — всего 3 строчки кода. Для этого просто выполните следующие **пронумерованные** шаги:

1. Создайте объект класса [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer), передав ему путь к исходному документу.
* Кроме того, вы можете создать объект Comparer, передав ему входной поток, чтобы избежать сохранения исходного файла в любом месте
* Вы можете передать `LoadOptions("document-password")` в качестве второго параметра для сравнения защищенного паролем документа
* Можно передать `LoadOptions(true)` в качестве второго параметра для создания объекта Comparer с использованием строки вместо файла. Таким образом, первый параметр должен быть строкой, которая будет сравниваться
* Чтобы включить ведение журнала, передайте объект класса `ComparerSettings` в качестве дополнительного параметра. В классе есть полезное поле логгера
2. Добавьте второй путь к документу в объект сравнения, используя соответствующий метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add-java.lang.String-).
* Все дополнительные опции из п.1. также доступны здесь
3. Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) для получения результата сравнения обоих документов.
* Чтобы настроить процесс сравнения, вы можете передать [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions), [SaveOptions](https://apireference.groupdocs .com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) или оба варианта. Вот лишь некоторые из настроек:
* Работа с метаданными документа
* Защита результирующего документа паролем
* Настройка стилей добавленных, удаленных, измененных частей документов
* Изменение чувствительности сравнения
* Включение/отключение различных типов изменений
* Создание сводной страницы
* И [многое другое](/comparison/java/comparison/)

Вот код для сравнения файлов:

<script src="https://gist.github.com/groupdocs-comparison-gists/07b102aec320458b093158f5197bb39b.js"></script>

В приведенном выше коде мы используем системный временный каталог и статический метод [FileType.fromFileNameOrExtension](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/FileType#fromFileNameOrExtension-java.lang.String- ), который определяет тип файла, чтобы создать путь для сохранения файла результатов. Вы можете изменить его, чтобы сохранить файл результата в поток вывода java. *Примечание: здесь файл результатов всегда имеет одно и то же имя `Result`. Это означает, что каждый процесс сравнения заменит предыдущий результирующий документ. метод, чтобы получить все поддерживаемые типы документов для версии библиотеки сравнения, которая у вас есть.

### Сохранение результирующего документа в место, выбранное клиентом

<script src="https://gist.github.com/groupdocs-comparison-gists/02051b940d9777eaac914946acd22de4.js"></script>

Здесь мы просто используем диалог сохранения JFileChooser, чтобы дать пользователю возможность выбрать место, где будет сохранен результирующий файл. После этого переносим полученный файл на новое место. Конечно сюда нужно добавить какие-то проверки и уведомления, это просто пример.

### Дополнительные возможности API сравнения

Минимальный функционал приложения уже реализован. Но есть много вещей, которые можно улучшить. Например, очень легко показать исходный, целевой и результирующий документы, показать каждое изменение, дать пользователю возможность принять или отклонить любое изменение перед сохранением документа и так далее.

#### Показать изображения из файлов в Compose Desktop

В Compose Desktop уже есть рисовальщики для отображения изображений из ресурсов. Но нам нужен дополнительный загрузчик ресурсов для отображения изображений из файла. Вот простой пример того, как это можно сделать:

<script src="https://gist.github.com/groupdocs-comparison-gists/eae238d65e5fac06b7afbdf95aed1c14.js"></script>

А вот пример использования этого загрузчика в функции Compose:

<script src="https://gist.github.com/groupdocs-comparison-gists/4da2c9d2d8c9ed67a2f224f1e1592df0.js"></script>

#### Отображение страниц результирующего документа

Чтобы показать страницы результирующего документа, нам нужно [создать превью для каждой страницы](/comparison/net/generate-document-pages-preview/). К счастью, Comparison API имеет для этого специальные функции.

Вот пример создания изображений для предварительного просмотра:

<script src="https://gist.github.com/groupdocs-comparison-gists/33607095e596a70efc85d61740a542e0.js"></script>

Класс [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) имеет параметры не только для установки формата выходного изображения, но и для указания ширины, высоты изображения, страниц для процесс и тд.

#### Отображение изменений с помощью Comparison API

Помимо создания превью, [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) дает возможность получить список изменений и принять/отклонить любое изменение. Для этого вам нужно использовать метод [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges-com.groupdocs.comparison.options.GetChangeOptions-) после вызова [сравнить] (https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare-java.lang.String-). Вы можете передать [GetChangeOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/GetChangeOptions) для настройки фильтра, но это не обязательно.

<script src="https://gist.github.com/groupdocs-comparison-gists/3ce0ef2b0ef1744448e9a4cf1e05da6a.js"></script>

Как указано выше, метод [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges--) возвращает список изменений, каждое из которых содержит много информации, например:
* [Уникальный идентификатор](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getId--) изменения
* [Изменить текст](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getText--) из результирующего документа
* [Текст перед](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getSourceText--) изменяется
* [Текст после](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getTargetText--) изменений
* Координаты [коробки](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getBox--) на странице, в которой находится изменение в документе
* [Список стилей](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getStyleChanges--) изменения
* И [так далее](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo)

### Получите бесплатную лицензию API

Большинство опций доступны только после установки лицензии. Вы можете получить [бесплатную временную лицензию](https://purchase.groupdocs.com/temporary-license), чтобы использовать API без оценочных ограничений.

### Вывод

В этой статье показан лишь небольшой процент функциональности [GroupDocs.Comparison API](https://products.groupdocs.com/comparison). Чтобы получить дополнительную информацию, вы можете просмотреть [документацию](/comparison/java/getting-started/) и репозиторий [GitHub](https://github.com/groupdocs-comparison). Кроме того, на [GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/master/Demos/Compose) у нас есть аналогичный пример использования Comparison API вместе с фреймворком Compose Desktop. Свяжитесь с нами [на форуме] (https://forum.groupdocs.com/), чтобы задать вопросы.

### Смотрите также

* Как [сравнить файлы](/comparison/java/how-to-compare-files-in-java-or-kotlin) в Java или Kotlin
* Как [показать предварительный просмотр чертежей AutoCAD] (/comparison/java/how-to-show-autocad-drawings-preview-in-kotlin-compose-application) в приложении kotlin compose
* Как [сравнить файлы кода Java](/comparison/java/how-to-compare-images-using-java-or-kotlin), применяя или отклоняя изменения с помощью Java или Kotlin
* Как [сравнить текст, Word или PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) в Java или Kotlin
* How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
