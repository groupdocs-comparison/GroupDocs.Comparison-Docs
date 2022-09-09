---
id: how-to-spot-photos-differences-in-java-or-kotlin
url: comparison/java/how-to-spot-photos-differences-in-java-or-kotlin
title: How to spot photos differences using Java or Kotlin
weight: 11
description: "The article is about comparing photos in Java or Kotlin to spot the differences using comparison API"
keywords: Compare photos, differences of photos, Diff tool for photos in Java, Kotlin
productName: GroupDocs.Comparison for Java
hideChildren: False
structuredData:
    showOrganization: True
    application:
        name: Spot differences tool
        description: The tool allows to spot differences of photos
        productCode: comparison
        productPlatform: java
    howTo:
        name: How to spot differences of photos
        description: Learn how to spot differences of photos in Java or Kotlin project
        steps:
        - name: Photos Comparison API
          text: Downloading and configuring Comparison API
        - name: Compare Photos to Highlight Differences
          text: After creating Comparer object passing source and target photos just call special method to get result document
---

In this article, we will discuss how to programmatically find differences between two photos. After going through this, you will find it easy to compare any photos and highlight the identified differences using Java or Kotlin.

### Photos Comparison API on Java or Kotlin

In this article, I will use Java API of [GroupDocs.Comparison](https://products.groupdocs.com/comparison) for comparing photos. Along with the most used image formats, like PNG, JPG/JPEG, and GIF, there is a wide range of [supported file formats](/comparison/java/supported-document-formats/) for comparison. Additionally, the API allows comparing word-processing documents, spreadsheets, presentations, drawings, webpages, email messages, source code files, and much more.

#### Download and Configure

Get the photos comparison library from the [downloads section](https://downloads.groupdocs.com/comparison/java). For Maven, Gradle or Kotlin based Java applications, installation process is very simple and described on [corresponding documentation page](comparison/java/installation). Later, you can try the examples of this article as well as many more from [GitHub](https://github.com/groupdocs-comparison). For the details, you may also visit the [API Reference](https://apireference.groupdocs.com/comparison/java).

### Compare Photos in Java to Highlight Differences

Comparing the photos and get the result is just 3 lines of code. You can follow the steps and use the mentioned source code for comparing any of your JPG, PNG, BMP, DICOM, DjVu, GIF, and other images. You can identify the dissimilarities or variations among these within the Java application.

* Select the first photo to compare using constructor of the [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) class.
* Add the second photo for comparison using the appropriate [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) method of Comparer object.
* Call the [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) method to get the comparison result of both photos.

Here is the code, compares two JPG photos and saves the output that highlights the identified differences.

---

<details open><summary>The following code shows how to compare two photos in Java</summary><blockquote>
<details open><summary>Java</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/a95fbd4fb36fc8bf201e3a187a637750.js"></script>

</details>

<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/bebea06fbaf649b6582ea86967994193.js"></script>

</details>
</blockquote></details>

---

Source and target photos

![Source and target photos](/comparison/java/images/how-to-spot-photos-differences-in-java-or-kotlin-source.jpg)

Resultant photo

![Result photo](/comparison/java/images/how-to-spot-photos-differences-in-java-or-kotlin-result.jpg)

---

### Get a Free API License

You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) in order to use the API without the evaluation limitations.

### Conclusion

To conclude from this article, we learned how to compare photos in Java. We further highlighted the identified differences after the comparison. Now you can build your own photo comparer app or use these features within your Java applications.

For more details, options, and examples, you can go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Reach us [on the forum](https://forum.groupdocs.com/) for your queries.

### See also

* How to [compare files](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java or Kotlin
* How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
* How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
* How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
* How to [compare any files](/comparison/java/how-to-compare-any-files-using-compose-desktop) using Compose Desktop
* How to [run Dropwizard Comparison sample](comparison/java/how-to-run-dropwizard-comparison-sample-using-docker) as Docker container
* How to [run Spring Comparison sample](comparison/java/how-to-run-spring-comparison-sample-using-docker) as Docker container