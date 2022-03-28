---
id: how-to-compare-files-in-java-or-kotlin
url: comparison/java/how-to-compare-files-in-java-or-kotlin
title: How to compare files in Java or Kotlin
weight: 9
description: "You will find how you can use GroupDocs.Comparison for Java to see differences of few files or documents. Changes detection mechanism can be configured according to requirements"
keywords: Compare Text, compare Word, compare Pdf, how to compare documents in Java, Kotlin
productName: GroupDocs.Comparison for Java
hideChildren: False
---

The [GroupDocs.Comparison](https://products.groupdocs.com/comparison) is a Java library which allows you to compare documents and see differences. Compare Microsoft Word, Excel, PowerPoint, OpenDocument, PDF, Text, HTML and many other documents, retrieve a list of changes between source and target documents, apply or reject changes and save results with [GroupDocs.Comparison](https://products.groupdocs.com/comparison) API. In addition to this, GroupDocs.Comparison can identify styling and formatting changes – like bold, italic, underlines, strikethroughs, font types, etc.

Changes detection algorithms used by GroupDocs.Comparison allows you to detect differences in various document parts and blocks:

* Text blocks – paragraphs, words and characters
* Tables
* Images
* Shapes etc.

Here are simple steps to compare two text files and show differences:

* Initialize the [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with the source document.
* Add the second file using the [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) method of Comparer object.
* Call the [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) method to get the result of the comparison.

The following code snippet demonstrates the simplest case of documents comparison using a couple lines of code.

---

<details open><summary>Compare documents using local files</summary><blockquote>
<details open><summary>Java</summary>

```java
try (Comparer comparer = new Comparer("D:\\source.docx")) {
    comparer.add("D:\\target.docx");
    comparer.compare("D:\\result.docx");
}
```

</details>

<details><summary>Kotlin</summary>

```kotlin
Comparer("D:\\source.docx").use { comparer ->
    comparer.add("D:\\target.docx")
    comparer.compare("D:\\result.docx")
}
```

</details>
</blockquote></details>

---

You can also use streams to compare documents. Not only file stream, there is no problem in comparing files from internet without saving them locally, or compare files on-fly.

---

<details open><summary>Compare documents using streams</summary><blockquote>
<details open><summary>Java</summary>

```java
try (InputStream sourceStream = new FileInputStream("D:\\source.png");
     InputStream targetStream = new FileInputStream("D:\\target.png");
     OutputStream resultStream = new FileOutputStream("D:\\result.png")) {
    try (Comparer comparer = new Comparer(sourceStream)) {
        comparer.add(targetStream);
        comparer.compare(resultStream);
    }
}
```

</details>

<details><summary>Kotlin</summary>

```kotlin
FileInputStream("D:\\source.png").use { sourceStream ->
    FileInputStream("D:\\target.png").use { targetStream ->
        FileOutputStream("D:\\result.png").use { resultStream ->
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

Let’s say you have two contracts in DOCX format that were concluded in different years. If you use the above code to compare these contracts, you get a DOCX file where deleted elements are marked in red, added in blue, and modified in green as shown below:

![Comparing two contracts](comparison/java/images/how-to-get-diff-of-contracts.png)


## Accept or Reject detected differences

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) provides an ability to apply or discard specific changes between source and target documents and save the resultant document with (or without) selected changes.

The following are the steps to apply/reject changes to the resultant document.

* Instantiate [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with source document path or stream.
* Call [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) method and specify  target document's path or stream.
* Call the [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) method to comparison process.
* Call [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()) method and obtain detected changes list.
* Set ComparisonAction of needed change object to [ComparisonAction.ACCEPT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#ACCEPT) or [ComparisonAction.Reject](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#REJECT) value.
* Call [applyChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#applyChanges(java.lang.String,%20com.groupdocs.comparison.options.ApplyChangeOptions)) method and pass object of [ApplyChangeOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ApplyChangeOptions) with collection of changes to it.

---

<details open><summary>The following code sample shows how to accept/reject detected differences.</summary><blockquote>
<details open><summary>Java</summary>

```java
try (Comparer comparer = new Comparer("D:\\source.docx")) {
    comparer.add("D:\\target.docx");
    comparer.compare();

    final ChangeInfo[] changes = comparer.getChanges();
    changes[0].setComparisonAction(ComparisonAction.REJECT);
    comparer.applyChanges("D:\\result.docx", new SaveOptions(), new ApplyChangeOptions(changes));
}
```

</details>

<details><summary>Kotlin</summary>

```kotlin
Comparer("D:\\source.docx").use { comparer ->
    comparer.add("D:\\target.docx")
    comparer.compare()
    val changes = comparer.changes
    changes[0].comparisonAction = ComparisonAction.REJECT
    comparer.applyChanges("D:\\result.docx", SaveOptions(), ApplyChangeOptions(changes))
}
```

</details>
</blockquote></details>

---

### Generate document pages preview

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) allows you generate page's previews for source, target and resultant documents using [generatePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)) method of a [Document](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document) class.
Class [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) is used to manage preview generation process – specify page numbers, image format etc.

The following steps shows how to generate a document preview with [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) API:

* Create a new instance of [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) class and pass the source document path as a constructor parameter.
* Add target document(s) to comparer object using [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) method.
* [getSource](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getSource()) and [getTargets](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getTargets()) methods of [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object allows to access source and target documents and provides [GeneratePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)) method
* Instantiate the [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) object with:
  * callback for each page stream creation (see event handler [CreatePageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.common.delegates/Delegates.CreatePageStream));
  * image preview format – PNG / JPG / BMP;
  * page numbers to process;
  * custom size of preview images (if needed).
* Call [generatePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)) method of dource and targets [Document](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document) objects passing [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) to it.

---

<details open><summary>Get page previews for resultant document</summary><blockquote>
<details open><summary>Java</summary>

```java
try (Comparer comparer = new Comparer("D:\\source.docx")) {
    comparer.add("D:\\target.docx");
    final Document source = comparer.getSource();
    final List<Document> targets = comparer.getTargets();
  
    final PreviewOptions previewOptions = new PreviewOptions(new Delegates.CreatePageStream() {
        @Override
        public OutputStream invoke(int pageNumber) {
            return new FileOutputStream("D:\\preview-for-page-" + pageNumber + ".png");
        }
    });
    previewOptions.setPageNumbers(new int[]{1, 2});
    previewOptions.setPreviewFormat(PreviewFormats.PNG);
    source.generatePreview(previewOptions);
}
```

</details>

<details><summary>Kotlin</summary>

```kotlin
Comparer("D:\\source.docx").use { comparer ->
    comparer.add("D:\\target.docx")
    val source: Document = comparer.source
    val targets: List<Document> = comparer.targets
    val previewOptions = PreviewOptions(object : CreatePageStream() {
        operator fun invoke(pageNumber: Int): OutputStream? {
            return FileOutputStream("D:\\preview-for-page-$pageNumber.png")
        }
    })
    previewOptions.pageNumbers = intArrayOf(1, 2)
    previewOptions.previewFormat = PreviewFormats.PNG
    source.generatePreview(previewOptions)
}
```

</details>
</blockquote></details>

---

### Compare multiple documents

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) allows comparing more than two documents. The following code sample shows how to compare multiple documents programmatically.

---

<details open><summary>How to compare multiple documents in Java</summary><blockquote>
<details open><summary>Java</summary>

```java
try (Comparer comparer = new Comparer("D:\\source.docx")) {
    comparer.add("D:\\target1.docx");
    comparer.add("D:\\target2.docx");
    comparer.add("D:\\target3.docx");
    comparer.compare("D:\\result.docx");
}
```

</details>

<details><summary>Kotlin</summary>

```kotlin
Comparer("D:\\source.docx").use { comparer ->
    comparer.add("D:\\target1.docx")
    comparer.add("D:\\target2.docx")
    comparer.add("D:\\target3.docx")
    comparer.compare("D:\\result.docx")
}
```

</details>
</blockquote></details>

---

## Installation

Maven is the easiest way to download and install [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java). Please get [a temporary license](https://purchase.groupdocs.com/temporary-license) to test the library without any functional restrictions.

Please check the [documentation](/comparison/java/installation/) to learn more about the library. We also offer free technical support so please feel free to [contact us](https://forum.groupdocs.com/) – we will be happy to help.

### See also

* How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
* How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
* How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
* How to [spot photos differences](/comparison/java/how-to-spot-photos-differences-in-java-or-kotlin) in Java or Kotlin