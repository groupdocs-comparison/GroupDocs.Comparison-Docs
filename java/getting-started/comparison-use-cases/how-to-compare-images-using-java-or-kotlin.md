---
id: how-to-compare-images-using-java-or-kotlin
url: comparison/java/how-to-compare-images-using-java-or-kotlin
title: How to Compare Images to see the differences in Java or Kotlin
weight: 7
description: "You will find how you can use GroupDocs.Comparison for Java inside your production when comparing images to see the differences. Look at file comparison sensitivity configuration and other use cases of the GroupDocs.Comparison API"
keywords: Compare images, spot images differences, how to compare images in Java, Kotlin
productName: GroupDocs.Comparison for Java
hideChildren: False
---
Whether you want to build an application with spot the difference feature or if you want to compare two images programmatically within any of your Java (or Kotlin) based image processing applications, you are at the right place. With our product, you can easily compare JPG, PNG, BMP, or images with some other file formats. Without wasting time, let’s compare images in Java and Kotlin using the **[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)**

![Idea of comparing images](comparison/java/images/how-to-compare-images.png)

## Java Image Comparison API

I will use [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) API for comparing images in this article. This API supports comparing JPG, PNG, BMP, DICOM, DCM, DjVu images along with many others supported file formats.

You can download the ZIP file with JAR library, documentation and other useful files from the [downloads section](https://downloads.groupdocs.com/comparison/java) or install the API in your Java/Kotlin application via Maven, Gradle or any other project management tool that support maven repositories.

---

<details open><summary>Connect GroupDocs repository</summary><blockquote>
<details open><summary>Maven</summary>

```xml
<repository>
    <id>GroupDocsJavaAPI</id>
    <name>GroupDocs Java API</name>
    <url>https://repository.groupdocs.com/repo/</url>
</repository>
```

</details>
<details><summary>Gradle</summary>

```groovy
repositories {
    maven {
        url "https://repository.groupdocs.com/repo/"
    }
}
```

</details>
<details><summary>Kotlin</summary>

```kotlin
repositories {
    maven(url = "https://repository.groupdocs.com/repo/")
}
```

</details>
</blockquote></details>

---

<details open><summary>Add GroupDocs.Comparison dependency</summary><blockquote>
<details open><summary>Maven</summary>

```xml
<dependency>
    <groupId>com.groupdocs</groupId>
    <artifactId>groupdocs-comparison</artifactId>
    <version>22.3</version>
</dependency>
```

</details>
<details><summary>Gradle</summary>

```groovy
dependencies {
    implementation 'com.groupdocs:groupdocs-comparison:22.3'
}
```

</details>
<details><summary>Kotlin</summary>

```kotlin
dependencies {
    implementation("com.groupdocs:groupdocs-comparison:22.3")
}
```

</details>
</blockquote></details>

---

### Compare Images in Java or Kotlin to Highlight Differences

Comparing two images in Java is too easy with [GroupDocs.Comparison](https://products.groupdocs.com/comparison) within Java application. The following steps explain how we can compare any two JPG, PNG, BMP, or any other image. It successfully detects the changes and highlights them in the output/resultant image.

* Define the first image using the [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) class.
* Add the second image using [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) method of Comparer object.
* Call [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) method to compare both the images and save the resultant image that highlights the differences among both the images.

---

<details open><summary>The code below shows how to compare two images in Java. As an example, it compares two JPG images and saves the output with differences.</summary><blockquote>
<details open><summary>Java</summary>

```java
try (Comparer comparer = new Comparer("D:\\source.png")) {
    comparer.add("D:\\target.png");
    comparer.compare("D:\\result.png");
}
```

</details>

<details><summary>Kotlin</summary>

```kotlin
Comparer("D:\\source.png").use { comparer ->
    comparer.add("D:\\target.png")
    comparer.compare("D:\\result.png")
}
```

</details>
</blockquote></details>

---

The images shown at the start of the article are used in this code. Images on the left are compared, and the output is shown on the right side that highlights the differences.

### Conclusion
In this article, we learned how to compare two images in Java using image comparison API. Now you can build your own image comparison application that can compare images and highlight the found differences to its users.

To get a complete idea about the features of the API, you can go through the [documentation](https://docs.groupdocs.com/comparison/java). You may also contact the [Free Support Team](https://forum.groupdocs.com/c/comparison) or [Free Consulting Team](https://groupdocs-free-consulting.github.io) that even writes code to help you understand the usage of GroupDocs APIs as per your requirements.

### See also

* How to [compare files](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java or Kotlin
* How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
* How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
* How to [spot photos differences](/comparison/java/how-to-spot-photos-differences-in-java-or-kotlin) in Java or Kotlin