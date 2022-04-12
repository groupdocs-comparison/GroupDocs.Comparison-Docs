---
id: how-to-compare-text-word-pdf-in-java-or-kotlin
url: comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin
title: How to Compare Text, Word, PDF with Java or Kotlin
weight: 8
description: "You will find how you can use GroupDocs.Comparison for Java inside your production when comparing Text, Word and PDF files to see the differences. Look at file comparison sensitivity configuration and other use cases of the GroupDocs.Comparison API"
keywords: Compare Text, compare Word, compare Pdf, how to compare documents in Java, Kotlin
productName: GroupDocs.Comparison for Java
hideChildren: False
---
After going through this article, you will be able to compare text files, Word files, PDF files, and other documents in Java-based applications. By using this feature, we can compare invoices, contracts, presentations, AutoCAD designs, price lists, or programming files. We will also have opportunity to highlight the identified changes and have the option to either accept or reject any change. You can even build our own [document comparison tool](https://products.groupdocs.app/comparison/total) similar to the one launched by GroupDocs, using the document comparison API for Java.

## Java Document Comparison API

As a pre-requisite, you may get [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) from the [downloads section](https://downloads.groupdocs.com/comparison/java). Also, you can easily add Comparison API to your Maven, Gradle or Kotlin DSL project fallowing [installation instructions](/comparison/java/installation/).

### Compare Word Files and Show Differences using Java or Kotlin

Steps below will show you how to compare any two Word documents in just a few lines of Java or Kotlin code. As a result, you will get the resultant document that will be highlighting the identified changes.

* Initialize the [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with the source document path.
* Add the second document to compare using the [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) method of Comparer object.
* Call the [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) method to get the result of the comparison. The compare method takes the name of the output document as a parameter.

---

<details open><summary>The code below shows how to compare two Word documents in Java</summary><blockquote>
<details open><summary>Java</summary>

```java
try (Comparer comparer = new Comparer("D:\\source.doc")) {
    comparer.add("D:\\target.doc");
    comparer.compare("D:\\result.doc");
}
```

</details>

<details><summary>Kotlin</summary>

```kotlin
Comparer("D:\\source.doc").use { comparer ->
    comparer.add("D:\\target.doc")
    comparer.compare("D:\\result.doc")
}
```

</details>
</blockquote></details>

---

Here is an example of the resultant Word document generated by the code above. It contains the highlighted differences of the compared documents. The deleted content will be marked in Red, added content will be displayed in Blue, however, Green shows the modified content.

![Word documents comparison result](comparison/java/images/how-to-compare-documents.png)

### Comparing Word files using Java or Kotlin streams

You can similarly pass the document as a stream to the Comparer class to get it compared with the second document.

---

<details open><summary>Here is the Java/Kotlin code to give you a clear idea</summary><blockquote>
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

_Using streams can be useful to compare documents without saving them on a disk_

### Accepting or rejecting changes in Word file using Java or Kotlin

After comparing documents, you have the option to either accept or reject any change. Below you can see the example of accepting and rejecting the changes alternatively. You may display each change one by one with the similar code and take your decisions to accept/reject each change according to your requirement.

---

<details open><summary>Here is the Java/Kotlin code to give you a clear idea</summary><blockquote>
<details open><summary>Java</summary>

```java
try (Comparer comparer = new Comparer("D:\\source.doc")) {
    comparer.add("D:\\target.doc");
    comparer.compare();

    final ChangeInfo[] changes = comparer.getChanges();
    for (int index = 0; index < changes.length; index++) {
        // As an example accept each second change
        if (index % 2 == 0) {
            changes[index].setComparisonAction(ComparisonAction.ACCEPT);
        } else {
            changes[index].setComparisonAction(ComparisonAction.REJECT);
        }
    }
    comparer.applyChanges("D:\\result.doc", new ApplyChangeOptions(changes));
}
```

</details>

<details><summary>Kotlin</summary>

```kotlin
Comparer("D:\\source.doc").use { comparer ->
    comparer.add("D:\\target.doc")
    comparer.compare()
    val changes = comparer.changes
    for (index in changes.indices) {
        // As an example accept each second change
        if (index % 2 == 0) {
            changes[index].comparisonAction = ComparisonAction.ACCEPT
        } else {
            changes[index].comparisonAction = ComparisonAction.REJECT
        }
    }
    comparer.applyChanges("D:\\result.doc", ApplyChangeOptions(changes))
}
```

</details>
</blockquote></details>

---

_More details about accepting and rejecting changes can be found in [documentation](https://docs.groupdocs.com/comparison/java/accept-or-reject-detected-changes/)_

### Compare text files and show differences using Java or Kotlin

Using the [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) class, we can also compare any text files. Below is the similar code for comparing two text files in Java or Kotlin. Steps are exactly the same as comparing any other two documents:

* Initialize the [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) object with the source text file.
* Add the second file using the [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) method of Comparer object.
* Call the [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) method to get the result of the comparison.

---

<details open><summary>The code below shows how to compare two Word documents in Java</summary><blockquote>
<details open><summary>Java</summary>

```java
try (Comparer comparer = new Comparer("D:\\source.txt")) {
    comparer.add("D:\\target.txt");
    comparer.compare("D:\\result.txt");
}
```

</details>

<details><summary>Kotlin</summary>

```kotlin
Comparer("D:\\source.txt").use { comparer ->
    comparer.add("D:\\target.txt")
    comparer.compare("D:\\result.txt")
}
```

</details>
</blockquote></details>

---

Here is the source, target and output text files that shows the comparison result of matching two text files using the code above.

![Comparing text files](comparison/java/images/how-to-compare-text-files.png)

Here is the [list of all file's formats](https://docs.groupdocs.com/comparison/java/supported-document-formats/) supported by [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)

### Compare PDF Files for Text Difference using Java or Kotlin

We can compare PDF files using the same code, just by changing the file extensions to “.pdf”.

---

<details open><summary>The code below compares two pdf files and shows differences</summary><blockquote>
<details open><summary>Java</summary>

```java
try (Comparer comparer = new Comparer("D:\\source.pdf")) {
    comparer.add("D:\\target.pdf");
    comparer.compare("D:\\result.pdf");
}
```

</details>

<details><summary>Kotlin</summary>

```kotlin
Comparer("D:\\source.pdf").use { comparer ->
    comparer.add("D:\\target.pdf")
    comparer.compare("D:\\result.pdf")
}
```

</details>
</blockquote></details>

---

Here is a result of comparing two PDF files in Java or Kotlin.

![Comparing text files](comparison/java/images/how-to-compare-pdf-files-using-java-or-kotlin.png)

Many other open-source examples are available at [GitHub Repository](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). You may download and quickly run examples using the [getting started](https://docs.groupdocs.com/comparison/java/getting-started/) guide. In case of any questions, look at the [documentation](https://docs.groupdocs.com/comparison/java/groupdocs-comparison-overview/) or reach us at any time [on the forum](https://forum.groupdocs.com/c/conversion/).

### See also

* How to [compare files](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java or Kotlin
* How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
* How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
* How to [spot photos differences](/comparison/java/how-to-spot-photos-differences-in-java-or-kotlin) in Java or Kotlin
* How to [compare any files](/comparison/java/how-to-compare-any-files-using-compose-desktop) using Compose Desktop