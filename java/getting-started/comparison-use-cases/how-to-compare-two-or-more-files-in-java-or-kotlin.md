---
id: how-to-compare-two-or-more-files-in-java-or-kotlin
url: comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin
title: How to compare two or more files in Java or Kotlin
weight: 10
description: "The article is about comparing two or more Excel, Word, Presentation or other files and documents"
keywords: Compare Excel, compare Word, compare Presentations, Diff tool for Java, Kotlin
productName: GroupDocs.Comparison for Java
hideChildren: False
structuredData:
    showOrganization: True
    application:
        name: Several document comparison
        description: The product allows to compare several documents
        productCode: comparison
        productPlatform: java
    howTo:
        name: 
        description: Learn how to compare several documents in Java or Kotlin project
        steps:
        - name: Load source document
          text: Create an instance of Comparer class passing source document as a constructor parameter
        - name: Load target documents
          text: Add one or more target documents to compare them with source one
        - name: Compare source and several target documents
          text: Run comparison process passing path where the result of the comparison will be saved
---

Document comparison is one of the most common requirements for today’s world. Whether it is to compare word files, compare excel files, presentations, PDF documents or even compare text files or any other document format, accuracy is the key factor while comparing.

This article will give you the idea, how [GroupDocs.Comparison](https://products.groupdocs.com/comparison) facilitates programmers to compare any two or more documents in many ways. On-Premise APIs of GroupDocs.Comparison are currently available for .NET and Java, however, this article is inclined towards Java or Kotlin developers.

### Compare Excel, Word files or any other documents in Java or Kotlin

[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) allows developers to compare two documents (in fact more than 2). The resulting document shows the changes between the two files in comparison. Below shown code how you can compare two excel files in just 3 lines of code in Java or Kotlin.


* Instantiate the [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with the source document path or stream.
* Call [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) method to specify the target(s) document path(s).
* Call the [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) method to run comparison process.

---

<details open><summary>Comparing documents by paths</summary><blockquote>
<details open><summary>Java</summary>

```java
try (Comparer comparer = new Comparer("D:\\source.xlsx")) {
    comparer.add("D:\\target.xlsx");
    comparer.compare("D:\\result.xlsx");
}
```

</details>

<details><summary>Kotlin</summary>

```kotlin
Comparer("D:\\source.xlsx").use { comparer ->
    comparer.add("D:\\target.xlsx")
    comparer.compare("D:\\result.xlsx")
}
```

</details>
</blockquote></details>

---

Comparing excel spreadsheets or Microsoft Word documents are just among the subset of documents formats that are supported by the Java API of [GroupDocs.Comparison](https://products.groupdocs.com/comparison). Below is the list of supported formats. You can visit the [documentation](/comparison/java/supported-document-formats/) to stay updated.

| Document Type                                                   | Formats                                          |
|-----------------------------------------------------------------|--------------------------------------------------|
| [Word Processing](https://wiki.fileformat.com/word-processing/) | 	DOC, DOCX, DOCM, DOT, DOTX, DOTM, RTF, TXT      |
| [Spreadsheets](https://wiki.fileformat.com/spreadsheet/)        | 	XLS, XLSX, XLSM, XLT, XLTM, XLSB, XLSM, CSV     |
| [Presentations](https://wiki.fileformat.com/presentation/)      | 	PPT, PPTX, PPS, PPSX, POT, POTX                 |
| [OpenDocument](https://wiki.fileformat.com/word-processing/)    | 	ODT, ODP, OTP, ODS, OTT                         |
| [Portable](https://wiki.fileformat.com/view/pdf/)               | 	PDF                                             |
| [Microsoft](https://docs.fileformat.com/visio/)                 | Visio Drawings	VSD, VSDX, VSS, VST, VDX          |
| [Note  Taking](https://wiki.fileformat.com/note-taking/)        | 	ONE                                             |
| [Web](https://wiki.fileformat.com/web/)                         | 	HTM, HTML, MHT, MHTML                           |
| [eBooks](https://wiki.fileformat.com/ebook/)                    | 	MOBI                                            |
| [Images](https://wiki.fileformat.com/image/)                    | 	BMP, GIF, JPG, JPEG, PNG, DICOM, DJVU, DWG, DXF |
| [Emails](https://wiki.fileformat.com/email/)                    | 	EML, EMLX, MSG                                  |

### Compare two or more Spreadsheets or OneNote Documents in Java or Kotlin

After the release of [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) 20.4, the API now supports:

* Comparison of more than two Microsoft Excel and OpenOffice spreadsheets (XLS, XLSX, ODS, CSV, …)
* Compare multiple Microsoft OneNote documents

The API already supports the comparison of multiple files for various document formats. Following code snippet shows how easy, multiple excel files can be compared in Java or Kotlin

---

<details open><summary>Comparing multiple Excel documents</summary><blockquote>
<details open><summary>Java</summary>

```java
try (Comparer comparer = new Comparer("D:\\source.xlsx")) {
    comparer.add("D:\\target1.xlsx");
    comparer.add("D:\\target2.xlsx");
    comparer.add("D:\\target3.xlsx");
    comparer.compare("D:\\result.xlsx");
}
```

</details>

<details><summary>Kotlin</summary>

```kotlin
Comparer("D:\\source.xlsx").use { comparer ->
    comparer.add("D:\\target1.xlsx")
    comparer.add("D:\\target2.xlsx")
    comparer.add("D:\\target3.xlsx")
    comparer.compare("D:\\result.xlsx")
}
```

</details>
</blockquote></details>

---

### Compare Documents from stream in Java or Kotlin

As a programmer, you are not only allowed to compare documents that are available on local disk, but also you can compare documents from streams.


* Just create the [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with the source document stream.
* Add all target documents to compare using the [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) method of Comparer object.
* Call the [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) method to write result document into output stream.

---

<details open><summary>Comparing multiple Excel documents from streams</summary><blockquote>
<details open><summary>Java</summary>

```java
try (InputStream sourceStream = new FileInputStream("D:\\source.xlsx");
     InputStream targetStream = new FileInputStream("D:\\target.xlsx");
     OutputStream resultStream = new FileOutputStream("D:\\result.xlsx")) {
    try (Comparer comparer = new Comparer(sourceStream)) {
        comparer.add(targetStream);
        comparer.compare(resultStream);
    }
}
```

</details>

<details><summary>Kotlin</summary>

```kotlin
FileInputStream("D:\\source.xlsx").use { sourceStream ->
    FileInputStream("D:\\target.xlsx").use { targetStream ->
        FileOutputStream("D:\\result.xlsx").use { resultStream ->
            Comparer(sourceStream).use { comparer ->
                comparer.add(targetStream)
                comparer.compare(resultStream)
            }
        }
    }
}
```

</details>
</blockquote></details>

---

### Compare Password Protected Word Documents / Excel Spreadsheet in Java or Kotlin

Password protection is common in the official documentation. Using the [document comparison Java API](https://products.groupdocs.com/comparison), allows its users/developers to compare password-protected documents.

Just a little change in the code of comparing documents that are not password-protected. While loading the document, use [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) to specify the document password. Below is the sample comparison code for your assistance.

---

<details open><summary>Comparing multiple Excel documents from streams</summary><blockquote>
<details open><summary>Java</summary>

```java
try (InputStream sourceStream = new FileInputStream("D:\\source.docx");
     InputStream targetStream = new FileInputStream("D:\\target.docx");
     OutputStream resultStream = new FileOutputStream("D:\\result.docx")) {
    try (Comparer comparer = new Comparer(sourceStream, new LoadOptions("password"))) {
        comparer.add(targetStream, new LoadOptions("password"));
        comparer.compare(resultStream);
    }
}
```

</details>

<details><summary>Kotlin</summary>

```kotlin
FileInputStream("D:\\source.docx").use { sourceStream ->
    FileInputStream("D:\\target.docx").use { targetStream ->
        FileOutputStream("D:\\result.docx").use { resultStream ->
            Comparer(sourceStream, LoadOptions("password")).use { comparer ->
                comparer.add(targetStream, LoadOptions("password"))
                comparer.compare(resultStream)
            }
        }
    }
}
```

</details>
</blockquote></details>

---

### Comparison of Documents with Specific Settings

One step ahead of just comparing, using the code similar to the mentioned below, you can compare multiple documents with your customized comparison settings.

[CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) provides you the opportunity to specify your comparison options like font styling for detected changes etc.

---

<details open><summary>Comparing multiple documents with specific settings</summary><blockquote>
<details open><summary>Java</summary>

```java
try (InputStream sourceStream = new FileInputStream("D:\\source.docx");
    InputStream targetStream = new FileInputStream("D:\\target.docx");
    OutputStream resultStream = new FileOutputStream("D:\\result.docx")) {
    try (Comparer comparer = new Comparer(sourceStream)) {
        comparer.add(targetStream);

        final StyleSettings styleSettings = new StyleSettings();
        styleSettings.setFontColor(Color.YELLOW);

        final CompareOptions compareOptions = new CompareOptions();
        compareOptions.setInsertedItemStyle(styleSettings);

        comparer.compare(resultStream, compareOptions);
    }
}
```

</details>

<details><summary>Kotlin</summary>

```kotlin
FileInputStream("D:\\source.docx").use { sourceStream ->
    FileInputStream("D:\\target.docx").use { targetStream ->
        FileOutputStream("D:\\result.docx").use { resultStream ->
            Comparer(sourceStream, LoadOptions("password")).use { comparer ->
                comparer.add(targetStream, LoadOptions("password"))

                val styleSettings = StyleSettings()
                styleSettings.fontColor = Color.YELLOW

                val compareOptions = CompareOptions()
                compareOptions.insertedItemStyle = styleSettings

                comparer.compare(resultStream, compareOptions)
            }
        }
    }
}
```

</details>
</blockquote></details>

---

### Compare Programming Language Files in Java or Kotlin

GroupDocs continuously increasing the support to compare more file formats. After the release v 20.4, you can now also compare JSON files using Java API. Following are the programming language file formats that are recently added to the [supported document formats list](/comparison/java/supported-document-formats/):

| Language     | File format                                   |
|--------------|-----------------------------------------------|
| ActionScript | Objective C/C++                               |
| Assembler    | Perl                                          |
| C-Based      | PHP                                           |
| CSharp       | Python                                        |
| Groovy       | Ruby                                          |
| JavaScript   | Scala                                         |
| Java         | Shell/Batch Script, Log, Diff, Config, LESS   |
| JSON         | SQL                                           |

You can build your own application using the above-highlighted features. We will be delighted if you contact us on the [forum](https://forum.groupdocs.com/c/comparison) to discuss, solving a problem, or share your feedback.

### See also

* How to [compare files](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java or Kotlin
* How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
* How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
* How to [spot photos differences](/comparison/java/how-to-spot-photos-differences-in-java-or-kotlin) in Java or Kotlin
* How to [compare any files](/comparison/java/how-to-compare-any-files-using-compose-desktop) using Compose Desktop