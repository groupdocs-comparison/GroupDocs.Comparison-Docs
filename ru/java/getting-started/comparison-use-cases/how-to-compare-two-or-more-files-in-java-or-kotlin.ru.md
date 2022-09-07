---
id: как-сравнить-два-или-более-файла-в-java-или-котлине
url: comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin
title: "Как сравнить два или более файла в Java или Kotlin"
weight: 10
description: "Статья посвящена сравнению двух и более файлов Excel, Word, Presentation или других файлов и документов."
keywords: "Сравните Excel, сравните Word, сравните презентации, инструмент Diff для Java, Kotlin"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
name: Сравнение нескольких документов
        description: "Продукт позволяет сравнивать несколько документов"
код продукта: сравнение
Платформа продукта: Java
как:
имя:
        description: "Узнайте, как сравнить несколько документов в проекте Java или Kotlin."
шаги:
- имя: Загрузить исходный документ
текст: создать экземпляр класса Comparer, передав исходный документ в качестве параметра конструктора.
- имя: Загрузить целевые документы
текст: добавьте один или несколько целевых документов, чтобы сравнить их с исходным
- имя: Сравните исходный и несколько целевых документов
текст: Запустить процесс сравнения, передав путь, где будет сохранен результат сравнения
---

Сравнение документов является одним из самых распространенных требований в современном мире. Будь то сравнение файлов Word, файлов Excel, презентаций, документов PDF или даже сравнение текстовых файлов или документов любого другого формата, точность является ключевым фактором при сравнении.

Эта статья даст вам представление о том, как [GroupDocs.Comparison](https://products.groupdocs.com/comparison) помогает программистам сравнивать любые два или более документов разными способами. Локальные API-интерфейсы GroupDocs.Comparison в настоящее время доступны для .NET и Java, однако эта статья предназначена для разработчиков Java или Kotlin.

### Сравнивайте файлы Excel, Word или любые другие документы на Java или Kotlin

[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) позволяет разработчикам сравнивать два документа (фактически больше двух). Полученный документ показывает изменения между двумя файлами в сравнении. Ниже показан код, как вы можете сравнить два файла Excel всего за 3 строки кода на Java или Kotlin.


* Создайте объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа.
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) для указания пути к целевому документу (с).
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) для запуска процесса сравнения.

---

<details open><summary>Сравнение документов по путям</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/d2ba23fdd66d71b44ef14b71cf9a1b69.js"></script>

</details>

<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/6f39584978729a7329efafa6c3f89dfb.js"></script>

</details>
</blockquote></details>

---

Сравнение электронных таблиц Excel или документов Microsoft Word — это лишь часть подмножества форматов документов, поддерживаемых Java API [GroupDocs.Comparison] (https://products.groupdocs.com/comparison). Ниже приведен список поддерживаемых форматов. Вы можете посетить [документацию](/comparison/java/supported-document-formats/), чтобы оставаться в курсе.

| Тип документа | Форматы |
|------------------------------------------------- ----------------|------------------------------------------------ ------------------|
| [Обработка текста](https://wiki.fileformat.com/word-processing/) | DOC, DOCX, DOCM, DOT, DOTX, DOTM, RTF, TXT |
| [Таблицы](https://wiki.fileformat.com/spreadsheet/) | XLS, XLSX, XLSM, XLT, XLTM, XLSB, XLSM, CSV |
| [Презентации](https://wiki.fileformat.com/presentation/) | PPT, PPTX, PPS, PPSX, POT, POTX |
| [OpenDocument](https://wiki.fileformat.com/word-processing/) | ODT, ODP, OTP, ODS, OTT |
| [Портативный](https://wiki.fileformat.com/view/pdf/) | PDF |
| [Майкрософт] (https://docs.fileformat.com/visio/) | Чертежи Visio VSD, VSDX, VSS, VST, VDX |
| [Ведение заметок](https://wiki.fileformat.com/note-taking/) | ОДИН |
| [Интернет](https://wiki.fileformat.com/web/) | HTM, HTML, MHT, MHTML |
| [электронные книги](https://wiki.fileformat.com/ebook/) | МОБИ |
| [Изображения] (https://wiki.fileformat.com/image/) | BMP, GIF, JPG, JPEG, PNG, DICOM, DJVU, DWG, DXF |
| [Электронные письма](https://wiki.fileformat.com/email/) | EML, EMLX, MSG |

### Сравнение двух или более электронных таблиц или документов OneNote на Java или Kotlin

После выпуска [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) 20.4 API теперь поддерживает:

* Сравнение более чем двух электронных таблиц Microsoft Excel и OpenOffice (XLS, XLSX, ODS, CSV, …)
* Сравните несколько документов Microsoft OneNote

API уже поддерживает сравнение нескольких файлов для различных форматов документов. Следующий фрагмент кода показывает, как легко можно сравнить несколько файлов Excel в Java или Kotlin.

---

<details open><summary>Сравнение нескольких документов Excel</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/5e338fb9c2a7401015edafb9779bcc4d.js"></script>

</details>

<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/205830e46292994ccd43fece4d5e93a9.js"></script>

</details>
</blockquote></details>

---

### Сравните документы из потока в Java или Kotlin

Как программист, вы не только можете сравнивать документы, имеющиеся на локальном диске, но также можете сравнивать документы из потоков.


* Просто создайте объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с потоком исходного документа.
* Добавьте все целевые документы для сравнения, используя метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) в Comparer. объект.
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) для записи результирующего документа в выходной поток.

---

<details open><summary>Сравнение нескольких документов Excel из потоков</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/09d353ac257edd0fec5a4a058d2a2c75.js"></script>

</details>

<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/ce4b5dba4acca392b96d55d80208e3be.js"></script>

</details>
</blockquote></details>

---

### Сравните защищенные паролем документы Word/электронные таблицы Excel в Java или Kotlin

Защита паролем распространена в официальной документации. Использование [Java API для сравнения документов] (https://products.groupdocs.com/comparison) позволяет пользователям/разработчикам сравнивать документы, защищенные паролем.

Просто небольшое изменение в коде сравнения документов, не защищенных паролем. При загрузке документа используйте [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions), чтобы указать пароль документа. Ниже приведен пример кода сравнения для вашей помощи.

---

<details open><summary>Сравнение нескольких защищенных паролем документов Excel из потоков</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/8c2a3079211b7489e37fa3e8b715d80c.js"></script>

</details>

<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/62e7f2b878fcefbf4f79a49fa15949ae.js"></script>

</details>
</blockquote></details>

---

### Сравнение документов с определенными настройками

На шаг впереди простого сравнения, используя код, аналогичный приведенному ниже, вы можете сравнить несколько документов с вашими индивидуальными настройками сравнения.

[CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) предоставляет вам возможность указать параметры сравнения, такие как стиль шрифта для обнаруженных изменений и т. д.

---

<details open><summary>Сравнение нескольких документов с определенными настройками стиля</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/0757e56451c630d17d44a846a2faafc2.js"></script>

</details>

<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/e1360304d78aebb5a4fc16503210e63a.js"></script>

</details>
</blockquote></details>

---

### Сравните файлы языка программирования в Java или Kotlin

GroupDocs постоянно расширяет поддержку для сравнения большего количества форматов файлов. После выпуска версии 20.4 вы также можете сравнивать файлы JSON с помощью Java API. Ниже приведены форматы файлов языков программирования, недавно добавленные в [список поддерживаемых форматов документов](/comparison/java/supported-document-formats/):

| Язык | Формат файла |
|---------------------- -------------|
| ActionScript | Цель С/С++ |
| Сборщик | Перл |
| на основе C | PHP |
| CSharp | Питон |
| заводной | Руби |
| JavaScript | Скала |
| Ява | Shell/Batch Script, Log, Diff, Config, LESS |
| JSON | SQL |

Вы можете создать собственное приложение, используя выделенные выше функции. Мы будем рады, если вы свяжетесь с нами на [форуме](https://forum.groupdocs.com/c/comparison), чтобы обсудить, решить проблему или поделиться своим мнением.

### Смотрите также

* Как [сравнить файлы](/comparison/java/how-to-compare-files-in-java-or-kotlin) в Java или Kotlin
* Как [сравнивать изображения](/comparison/java/how-to-compare-images-using-java-or-kotlin) с помощью Java или Kotlin
* Как [сравнить текст, Word или PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) в Java или Kotlin
* Как [найти различия в фотографиях](/comparison/java/how-to-spot-photos-differences-in-java-or-kotlin) в Java или Kotlin
* How to [compare any files](/comparison/java/how-to-compare-any-files-using-compose-desktop) using Compose Desktop
