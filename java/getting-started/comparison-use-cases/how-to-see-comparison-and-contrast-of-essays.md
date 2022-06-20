---
id: how-to-see-comparison-and-contrast-of-essays
url: comparison/java/how-to-see-comparison-and-contrast-of-essays
title: How to see comparison and contrast of essays
weight: 26
description: "The article describes usage of GroupDocs.Comparison to see comparison and contrast of essays"
keywords: comparison and contrast, Compare essays, Compare PDF with Kotlin and Java, Comparison Tool for essays
productName: GroupDocs.Comparison for Java
hideChildren: False
structuredData:
    showOrganization: True
    application:
        name: Essay comparison API
        description: The product allows to compare Pdf, Word and Image files
        productCode: comparison
        productPlatform: java
    howTo:
        name: How to see comparison and contrast of essays in Java or Kotlin application
        description: You can easily see comparison and contrast of essays in your own Java or Kotlin application writing just a few lines of code
        steps:
        - name: Configuring comparison library in the project
          text: To configure comparison library just add maven repository and dependency to the project
        - name: Run comparison process to see comparison and contrast of essays in the result document
          text: Below is a description and code example of comparing essays
---
A lot of students write essay every day. Sometimes it is very easy, especially when the topic of the essay is interesting and understandable. But sometimes students spend lots of time just to understand what the essay must be about. It may takes few days to investigate all materials and to write plan that will be used  for writing. Some information can duplicates in different sources. In the same time, nobody wants to write the same information to the essay more than once. The best way to avoid duplications is to compare information from different sources and to check whether it duplicates or not. To see comparison and contrast of different information sources or even few essays you can use powerful and easy-to-use [GroupDocs.Comparison API](https://products.groupdocs.com/comparison) that gives opportunity to compare Word, Excel, PowerPoint, Pdf documents, text files and much more [files formats](/comparison/java/supported-document-formats/). There is free online application for comparison and few samples that can be run on local PC. Links to them are below.

### How to see comparison and contrast of essays in Java or Kotlin application

In case you have Java or Kotlin application in which must be embedded functionality to see comparison and contrast of essays, [GroupDocs.Comparison](https://products.groupdocs.com/comparison) is exactly what you need.

#### Configuring comparison library in the project

First of all, add GroupDocs repository to your project file:

<details open><summary>Add GroupDocs repository</summary><blockquote>
<details open><summary>Maven</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/9de00b81ae5dd326fc85fecb5c1220a6.js"></script>

</details>
<details><summary>Gradle</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/15f77ae825f310acd9cad555dcea0019.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/ad7ad48d4e7f9f60e858c7ba546f3745.js"></script>

</details>
</blockquote></details>

Secondly, add required dependency and sync the project with a help of IDE

_The latest version of Comparison API can be [found here](https://repository.groupdocs.com/comparison/)_

<details open><summary>Add GroupDocs.Comparison dependency</summary><blockquote>
<details open><summary>Maven</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/f4d8f0b56d1dfa24dea18c68cd9d8001.js"></script>

</details>
<details><summary>Gradle</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/b760d58061daa45d9b211e2701aa52b5.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/b20a9f70c3442ca586a95b00a778a464.js"></script>

</details>
</blockquote></details>

#### Run comparison process to see comparison and contrast of essays in the result document

It is very easy to use [GroupDocs.Comparison](https://products.groupdocs.com/comparison) to compare essays and to see comparison and contrast of them

Here are the steps to compare two essays as PDF files:

* Instantiate [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object passing source essay path or stream as an argument
* Call [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) method and specify target essay path or stream
* Optionally, you can use [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) and its method [setDetectStyleChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setDetectStyleChanges-boolean-) to configure comparer to highlight style changes (by default changes are shown in green)
* Call [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) method to run the comparison of essays.

Java code sample:

<script src="https://gist.github.com/groupdocs-comparison-gists/fc7b36954eb871f1fee1b1e5d6043ea3.js"></script>

Kotlin code sample:

<script src="https://gist.github.com/groupdocs-comparison-gists/fabd50201a84e3325f88db48b7668f8d.js"></script>

| Source essay                                                                        | Target essay                                                                         |
|-------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------|
| ![](comparison/java/images/how-to-see-comparison-and-contrast-of-essays-source.png) | ![](comparison/java/images/how-to-see-comparison-and-contrast-of-essays-target.png) |

|                                     Result file                                     |
|:-----------------------------------------------------------------------------------:|
| ![](comparison/java/images/how-to-see-comparison-and-contrast-of-essays-result.png) |

### Get a Free API License

There are much more options available, for example, [generating summary page](/comparison/java/get-only-summary-page/), [sensitivity of comparison](/comparison/java/adjusting-comparison-sensitivity/) and so on. Lots of them are available only when license is set. You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) to use the API without evaluation limitations.

### Free Online App
Along with full-featured Java/Kotlin library we provide simple, but powerful free Apps.  
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [On-Line GroupDocs Comparison Application](https://products.groupdocs.app/comparison).

### More details

There are much more examples of using [GroupDocs.Comparison](https://products.groupdocs.com/comparison) with Java/Kotlin available on our [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). You are free to change and use them in order to compare photos, Excel, Word, code files, PowerPoint Presentations and much more [supported file formats](/comparison/java/supported-document-formats/).

For getting details, options, and examples, you can go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Reach us [on the forum](https://forum.groupdocs.com/) for your queries.

### See also

* How to [compare documents](/comparison/java/how-to-compare-documents-in-the-easiest-way) in the easiest way
* How to [compare files](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java or Kotlin
* How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
* How to [use Javalin Framework](/comparison/java/how-to-use-javalin-comparison-sample) with Comparison API
* How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
