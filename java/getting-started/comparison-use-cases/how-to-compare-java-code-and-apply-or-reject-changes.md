---
id: how-to-compare-java-code-and-apply-or-reject-changes
url: comparison/java/how-to-compare-java-code-and-apply-or-reject-changes
title: How to compare java code and apply or reject changes
weight: 28
description: "The article describes how to compare java code and apply or reject changes using GroupDocs.Comparison"
keywords: comparison and contrast, Compare Java code, Compare Java with Kotlin and Java, Comparison Tool for Java code
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: API for comparing Java code
    description: The product allows to compare Java code
    productCode: comparison
    productPlatform: java
  howTo:
    name: How to compare Java code in application
    description: You can easily compare any Java code and than accept or reject changes
    steps:
      - name: Configuring Comparison library in a project
        text: You need to configure Groupdocs repository and dependency in your project
      - name: Running comparison process for Java code and getting all differences
        text: Compare Java code writing just few lines of code to see the difference of them
      - name: Check changes in Java code to accept or reject them
        text: Check each change and accept or reject each of them saving valid resultant Java file
---

Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible. Lots of companies create products using Java. That means that lots of teams write Java code and then the code is joined together. Sometimes young developers make mistakes. In this way experienced developers should check changes in the code. Some changes are correct and must be accepted, while others are wrong and must be rejected. [GroupDocs.Comparison](https://products.groupdocs.com/comparison) is the best solution for these cases.

### How to compare Java code in application

The only thing you need to do is to configure [GroupDocs.Comparison library](https://repository.groupdocs.com/comparison/) in your project. After that, writing just a few lines of code, you can solve the issue.

#### Configuring Comparison library in a project

Firstly, add GroupDocs repository to the project to make it possible to download the library automatically

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

Secondly, specify required library dependency

_The latest version of Comparison library can be [found here](https://repository.groupdocs.com/comparison/)_

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

#### Running comparison process for Java code and getting all differences

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) is very modern and powerful library. There are lots of facilities for comparing files, getting details of changes, analyzing changes, accepting or rejecting them, retrieving coordinates for each change and so on. In this article are shown just a small part of capabilities. More details about other facilities can find in [the documentation](/comparison/java/getting-started/)

<details open><summary>To compare source and target Java code files do next</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/78372877c238f2227f5c489e698ef695.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/a865cf6080a512b0b1cb4534e74e75f6.js"></script>

</details>
</blockquote></details>

As a result, you will find next two files:

- `.java` result file with special marks, which mark each change in the document
- `.html` human-readable result comparison file

These files can be used to analyze changes that were made in target document in comparison with source one. But it is not finish, the next step is much more useful and interesting.

#### Check changes in Java code to accept or reject them

With [GroupDocs.Comparison](https://products.groupdocs.com/comparison) you can compare lots of file formats. Moreover, you can get list of changes, reject or accept them applying to the result Java file. It can be very useful when some changes are invalid and must be reverted while other are good and must be applied to the document.

<details open><summary>Example of applying or rejecting changes in Java code file</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/4c035f1ddf3932d8fc89ecc1519a3005.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/c45c087baf5ca2bc7a848112e18180d7.js"></script>

</details>
</blockquote></details>

In the example above it gets list of changes to analyze each of them. The code checks the value of `getSourceText()` method. When it contains `size;`, or `for (int i = 0; i < HASH_TABLE_SIZE` (parts of changed lines in Java code file), the change will be accepted to be kept, otherwise change will be rejected to keep line like it was in source file. In order to understand described above, check images below. After rejecting or accepting, changes are applied and saved as a new file.

As a result you will find two files:

- `.java` - valid Java code file where rejected changes were reverted while accepted changes were kept
- `.html` - human-readable file, very similar to result that was generated on the previous step, but without changes which were rejected

Here are screenshots of all generated files:

| Source Java code file                                                                        | Target Java code file                                                                        | Result Html file                                                                             | Result Html file with changes applied                                                         |
| -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| ![](/comparison/java/images/how-to-compare-java-code-and-apply-or-reject-changes-source.png) | ![](/comparison/java/images/how-to-compare-java-code-and-apply-or-reject-changes-target.png) | ![](/comparison/java/images/how-to-compare-java-code-and-apply-or-reject-changes-result.png) | ![](/comparison/java/images/how-to-compare-java-code-and-apply-or-reject-changes-applied.png) |

On the images you can see that changes `0` -> `3` and `1` -> `5` were rejected, while changes `long` -> `int` and `--` -> `++` were saved. The valid Java code file was also saved. You can see it below

|                                       Resultant Json file                                       |
| :---------------------------------------------------------------------------------------------: |
| ![](/comparison/java/images/how-to-compare-java-code-and-apply-or-reject-changes-resultant.png) |

### Get a Free API License

In Comparison library are lots of facilities, for example, [sensitivity of comparison](/comparison/java/adjusting-comparison-sensitivity/), [generating summary page](/comparison/java/get-only-summary-page/) and much more. Some of them are available only with valid license. You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) to use the API without evaluation limitations.

### Free Online App

Along with full-featured Java/Kotlin library we provide simple, but powerful free applications.  
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG, XML and other documents with free to use online [GroupDocs Comparison Application](https://products.groupdocs.app/comparison).

### More details

There are much more examples of using [GroupDocs.Comparison](https://products.groupdocs.com/comparison) with Java/Kotlin available on our [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). You are free to change and use them in order to compare photos, Excel, Word, code files, PowerPoint Presentations and much more [supported file formats](/comparison/java/supported-document-formats/).

For getting details, options, and examples, you can go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Reach us [on the forum](https://forum.groupdocs.com/) for your queries.

### See also

- How to [compare documents](/comparison/java/how-to-compare-documents-in-the-easiest-way) in the easiest way
- How to [compare json files](/comparison/java/how-to-compare-files-in-java-or-kotlin) applying or rejecting changes with Java or Kotlin
- How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
- How to [see comparison and contrast](/comparison/java/how-to-see-comparison-and-contrast-of-essays) of essays
- How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
