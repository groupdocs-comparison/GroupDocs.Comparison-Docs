---
id: how-to-compare-json-applying-rejecting-changes
url: comparison/java/how-to-compare-json-applying-rejecting-changes
title: How to compare json files applying or rejecting changes
weight: 27
description: "The article describes how to compare json files applying or rejecting changes using GroupDocs.Comparison"
keywords: comparison and contrast, Compare Json files, Compare Json with Kotlin and Java, Comparison Tool for Json files
productName: GroupDocs.Comparison for Java
hideChildren: False
structuredData:
    showOrganization: True
    application:
        name: Tool to compare Json files
        description: The product allows to compare Json files
        productCode: comparison
        productPlatform: java
    howTo:
        name: How to compare Json files in Java or Kotlin application
        description: You can easily compare any Json files with accepting or rejecting changes
        steps:
        - name: Adding Comparison library to the project
          text: You need to add Groupdocs repository and dependency to your project
        - name: Comparing source and target Json files to see all differences
          text: Compare Json files just in few lines of code to see the difference of them
        - name: Accepting or rejecting changes in Json file
          text: Accept or reject changes saving valid resultant Json file
---
Json files are very popular nowadays. They are used for transferring data on the internet, for configuring applications and so on. In this way, very often people need to compare Json files to see whether they were changed or not. In the same time, it can be very useful to reject one changes and to accept other. In cause you need such functionality, [GroupDocs.Comparison](https://products.groupdocs.com/comparison) is the best solution for you.

### How to compare Json files in Java or Kotlin application

All you need is to add [GroupDocs.Comparison library](https://repository.groupdocs.com/comparison/) to a project and to write just a few lines of code

#### Adding Comparison library to the project

First thing you need is to add GroupDocs repository to the project

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

Second thing is to add required dependency

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

#### Comparing source and target Json files to see all differences

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) is very powerful library that has lots of options for comparing files, analyzing changes, getting details about each change, accepting or rejecting each change and so on. Here are used just a tiny part of capabilities. More information about them you can find in [the documentation](/comparison/java/getting-started/)

<details open><summary>Here is the code you need to compare source and target Json files</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/9395725d254c7500ed2f30dc558fd174.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/8eb90b7f07e6240ec875e5e195a0a374.js"></script>

</details>
</blockquote></details>

As a result you will have two files:

* `.json` file with special labels, which shows each change in the document
* `.html` file with human-readable result of comparison

These files can be used to see and analyze changes. But it is not all we want to do, the next step is much more interesting and useful.

#### Accepting or rejecting changes in Json file

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) library provides not only comparison functionality, but also possibility to get list of changes, reject or accept them and apply to the result document. It can be very useful when some changes are invalid and must be reverted while other are good and must be applied to the document.

<details open><summary>Here is the code you need to apply or reject changes in Json file</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/00519168fed54a68e3edbb087a0e0ef8.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/2b54bd01f16bce036b2bd9ec32f58473.js"></script>

</details>
</blockquote></details>

In the code above we are getting list of changes and process each of them. We are analyzing the value of `getSourceText()` method. In case it contains `defaultListTemplate`, `defaultFileTemplate` or `useJSP` (properties from Json file), the change will be accepted, all other changes will be rejected. To understand what is happening, look images below. After updating, changes are applied with saving as a new file. 

The result will be saved as two files 

* `.json` valid Json file without changes that were rejected but with changes that were accepted
* `.html` human-readable result file, very similar to result of comparison process, but without rejected changes

Here are screenshots of all files:

| Source Json file                                                                      | Target Json file                                                                      | Result Html file                                                                      | Result Html file after applying changes                                                                       |
|---------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
| ![](/comparison/java/images/how-to-compare-json-applying-rejecting-changes-source.png) | ![](/comparison/java/images/how-to-compare-json-applying-rejecting-changes-target.png) | ![](/comparison/java/images/how-to-compare-json-applying-rejecting-changes-result.png) | ![](/comparison/java/images/how-to-compare-json-applying-rejecting-changes-applied.png)                        |

As you can see, changes `pobox` -> `hacker`, `200` -> `88` and `100` -> `6` were rejected, while changes inside properties `defaultListTemplate`, `defaultFileTemplate` and `useJSP` were left in the document. Valid resultant Json document was also saved. You can see it below

|                                   Resultant Json file                                    |
|:----------------------------------------------------------------------------------------:|
| ![](/comparison/java/images/how-to-compare-json-applying-rejecting-changes-resultant.png) |

### Get a Free API License

There are much more options available, for example, [sensitivity of comparison](/comparison/java/adjusting-comparison-sensitivity/), [generating summary page](/comparison/java/get-only-summary-page/) and much more. Some of them are available only with valid license. You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) to use the API without evaluation limitations.

### Free Online App
Along with full-featured Java/Kotlin library we provide simple, but powerful free applications.  
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison Application](https://products.groupdocs.app/comparison).

### More details

There are much more examples of using [GroupDocs.Comparison](https://products.groupdocs.com/comparison) with Java/Kotlin available on our [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). You are free to change and use them in order to compare photos, Excel, Word, code files, PowerPoint Presentations and much more [supported file formats](/comparison/java/supported-document-formats/).

For getting details, options, and examples, you can go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Reach us [on the forum](https://forum.groupdocs.com/) for your queries.

### See also

* How to [compare documents](/comparison/java/how-to-compare-documents-in-the-easiest-way) in the easiest way
* How to [compare files](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java or Kotlin
* How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
* How to [see comparison and contrast](/comparison/java/how-to-see-comparison-and-contrast-of-essays) of essays
* How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
