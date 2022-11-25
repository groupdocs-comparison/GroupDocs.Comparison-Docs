---
id: how-to-compare-files-in-java-or-kotlin
url: comparison/java/how-to-compare-files-in-java-or-kotlin
title: How to compare files in Java or Kotlin
weight: 9
description: "You will find how you can use GroupDocs.Comparison for Java to see differences of few files or documents. Changes detection mechanism can be configured according to requirements"
keywords: Compare Text, compare Word, compare Pdf, how to compare documents in Java, Kotlin
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Files diff
    description: The product allows to diff files
    productCode: comparison
    productPlatform: java
  howTo:
    name: How to check if two files are identical
    description: Learn how to check if two files are identical in Java or Kotlin project
    steps:
      - name: Load source file
        text: Create an instance of Comparer class passing source file as a constructor parameter
      - name: Load target files
        text: Add one or more target files to compare them with source one
      - name: Compare source and target files
        text: Run comparison process passing path where the result file should be saved
---

The [GroupDocs.Comparison](https://products.groupdocs.com/comparison) is a Java library which allows you to compare documents and see differences. Compare Microsoft Word, Excel, PowerPoint, OpenDocument, PDF, Text, HTML and many other documents, retrieve a list of changes between source and target documents, apply or reject changes and save results with [GroupDocs.Comparison](https://products.groupdocs.com/comparison) API. In addition to this, GroupDocs.Comparison can identify styling and formatting changes – like bold, italic, underlines, strikethroughs, font types, etc.

Changes detection algorithms used by GroupDocs.Comparison allows you to detect differences in various document parts and blocks:

- Text blocks – paragraphs, words and characters
- Tables
- Images
- Shapes etc.

Here are simple steps to compare two text files and show differences:

- Initialize the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with the source document.
- Add the second file using the [add](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)>) method of Comparer object.
- Call the [compare](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)>) method to get the result of the comparison.

The following code snippet demonstrates the simplest case of documents comparison using a couple lines of code.

---

<details open><summary>Compare documents using local files</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/e449c06565647b3cdaed7511da401478.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/fdc16a21af9b8d6900d1a369b3c1cafd.js"></script>

</details>
</blockquote></details>

---

You can also use streams to compare documents. Not only file stream, there is no problem in comparing files from internet without saving them locally, or compare files on-fly.

---

<details open><summary>Compare documents using streams</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/6afc74d39ca3045cc8c693c41907d76e.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/37db39ac21988d21259ef7e8039a3298.js"></script>

</details>
</blockquote></details>

---

Let’s say you have two contracts in DOCX format that were concluded in different years. If you use the above code to compare these contracts, you get a DOCX file where deleted elements are marked in red, added in blue, and modified in green as shown below:

![Comparing two contracts](/comparison/java/images/how-to-get-diff-of-contracts.png)

## Accept or Reject detected differences

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) provides an ability to apply or discard specific changes between source and target documents and save the resultant document with (or without) selected changes.

The following are the steps to apply/reject changes to the resultant document.

- Instantiate [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with source document path or stream.
- Call [add](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)>) method and specify target document's path or stream.
- Call the [compare](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()>) method to comparison process.
- Call [getChanges](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()>) method and obtain detected changes list.
- Set ComparisonAction of needed change object to [ComparisonAction.ACCEPT](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#ACCEPT) or [ComparisonAction.Reject](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#REJECT) value.
- Call [applyChanges](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#applyChanges(java.lang.String,%20com.groupdocs.comparison.options.ApplyChangeOptions)>) method and pass object of [ApplyChangeOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ApplyChangeOptions) with collection of changes to it.

---

<details open><summary>The following code sample shows how to accept/reject detected differences.</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/34d8fa500b337c43f968bf18fd8527a5.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/f3b12253aafaf6c4a4a862b2ea206331.js"></script>

</details>
</blockquote></details>

---

### Generate document pages preview

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) allows you generate page's previews for source, target and resultant documents using [generatePreview](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)>) method of a [Document](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document) class.
Class [PreviewOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) is used to manage preview generation process – specify page numbers, image format etc.

The following steps shows how to generate a document preview with [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) API:

- Create a new instance of [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) class and pass the source document path as a constructor parameter.
- Add target document(s) to comparer object using [add](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)>) method.
- [getSource](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getSource()>) and [getTargets](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getTargets()>) methods of [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object allows to access source and target documents and provides [GeneratePreview](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)>) method
- Instantiate the [PreviewOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) object with:
  - callback for each page stream creation (see event handler [CreatePageStream](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.common.delegates/Delegates.CreatePageStream));
  - image preview format – PNG / JPG / BMP;
  - page numbers to process;
  - custom size of preview images (if needed).
- Call [generatePreview](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)>) method of dource and targets [Document](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document) objects passing [PreviewOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) to it.

---

<details open><summary>Get page previews for resultant document</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/565efa20595c05ecb81d9ca44045afdf.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/fc4c8a219bdd0419222bd76275219fd2.js"></script>

</details>
</blockquote></details>

---

### Compare multiple documents

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) allows comparing more than two documents. The following code sample shows how to compare multiple documents programmatically.

---

<details open><summary>How to compare multiple documents in Java</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/7b6ad368a55e6df16c2f0b9d86edebe5.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/ad47af4d760d17752962f86be72fb8ec.js"></script>

</details>
</blockquote></details>

---

## Installation

Maven is the easiest way to download and install [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java). Please get [a temporary license](https://purchase.groupdocs.com/temporary-license) to test the library without any functional restrictions.

Please check the [documentation](/comparison/java/installation/) to learn more about the library. We also offer free technical support so please feel free to [contact us](https://forum.groupdocs.com/) – we will be happy to help.

### See also

- How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
- How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
- How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
- How to [spot photos differences](/comparison/java/how-to-spot-photos-differences-in-java-or-kotlin) in Java or Kotlin
- How to [compare Json files](/comparison/java/how-to-compare-json-applying-rejecting-changes) applying or rejecting changes
