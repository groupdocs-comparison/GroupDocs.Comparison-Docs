---
id: how-to-spot-the-difference-of-two-autocad-dwg-drawings
url: comparison/java/how-to-spot-the-difference-of-two-autocad-dwg-drawings
title: How to spot the difference of two AutoCad drawings (DWG)
weight: 24
description: "In the article is written about spotting the difference of two AutoCad drawings (DWG)"
keywords: How to compare AutoCAD drawings, DWG files diff, Compare AutoCad Drawing, Compare DWG
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Compare AutoCad drawings (DWG files)
    description: The product allows to compare AutoCad drawings (DWG files)
    productCode: comparison
    productPlatform: java
  howTo:
    name: How to compare AutoCad drawings (DWG files)
    description: Find out how to compare AutoCad drawings (DWG files)
    steps:
      - name: Load source AutoCad DWG file
        text: Create an instance of Comparer class passing source AutoCad DWG file as a constructor parameter
      - name: Load target AutoCad DWG file
        text: Add one or more target AutoCad DWG file to compare them with source one
      - name: Compare source and target AutoCad DWG file
        text: Run comparison process passing path where the result of the comparison will be saved
---

It is highly difficult to see the difference of two AutoCad drawings (DWG files). Simultaneously, more and more people are in need to do it, especially nowadays, when lots of employee works remotely. Luckily, with [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) library you can easily compare two AutoCad drawings (DWG files) as well lots of other [supported file formats]({{< ref "comparison/java/getting-started/supported-document-formats.md" >}})

## How to Compare AutoCad drawings (DWG files)

Just follow next steps to compare two or more of them:

1. Create new instance of [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) class with source file path or stream as an argument
2. Call [add](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)>) method adding target document path or stream to be compared with the source one
3. Call [compare](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)>) method to compare files and save the result document

Here is Java code that demonstrate steps described above:

<script src="https://gist.github.com/groupdocs-comparison-gists/49d0e0a30eeacc325a1d7acce26e5c8c.js"></script>

The same thing you can do in Kotlin:

<script src="https://gist.github.com/groupdocs-comparison-gists/70107598e427be7b12b7fa1c8490e8ce.js"></script>

Here are examples of source, target and result documents:

| Source AutoCad drawing (DWG files)                                                             | Target AutoCad drawing (DWG files)                                                             |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| ![](/comparison/java/images/how-to-spot-the-difference-of-two-autocad-dwg-drawings-source.png) | ![](/comparison/java/images/how-to-spot-the-difference-of-two-autocad-dwg-drawings-target.png) |

|                                      Result PDF document                                       |
| :--------------------------------------------------------------------------------------------: |
| ![](/comparison/java/images/how-to-spot-the-difference-of-two-autocad-dwg-drawings-result.png) |

### How to use additional comparison options

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) provides lots of additional options to be used to customize not only comparison process but also the result file. Below are described just a few of them. For more details go through [the documentation](/comparison/java/getting-started/)

#### Using custom change style

You can easily customize changes styles by changing its colors or other parameters:

Here is code example for Java:

<script src="https://gist.github.com/groupdocs-comparison-gists/34cd530807eb1d374774c73978e055c2.js"></script>

In Kotlin it works the same way:

<script src="https://gist.github.com/groupdocs-comparison-gists/6ebabe0c0626c7bbabb12ae355b09b4f.js"></script>

#### Disabling highlighting some types of changes

There are special options to disable detecting some types of change, as an example, below is shown how to avoid showing inserted parts of drawing file

Here is code example for Java:

<script src="https://gist.github.com/groupdocs-comparison-gists/036dc8d48fcf19b984dc867d3207b47c.js"></script>

The same you can do in Kotlin application:

<script src="https://gist.github.com/groupdocs-comparison-gists/7536b954fb8da77335fd9af15801404b.js"></script>

### Get a Free API License

Lots of the settings, for example generating summary page, sensitivity of comparison and so on are available only with license. You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) in order to use the API without evaluation limitations.

### Conclusion

In this article is written about comparing AutoCad drawings (DWG files) using [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) library. It is very easy to embed the library into any Java or Kotlin, desktop or web application on any platform. There are samples of using Comparison API inside web applications on [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). They are free to be modified and used for comparing AutoCad drawings, photos, Excel, Word, code files, PowerPoint Presentations and other [supported file formats](/comparison/java/supported-document-formats/).

For more details, options, and examples, you can go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Reach us [on the forum](https://forum.groupdocs.com/) for your queries.

### Free Online App

Along with full-featured Java library we provide simple, but powerful free Apps.
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSGand other documents with free to use online **[GroupDocs Comparison App](https://products.groupdocs.app/comparison)**.

### See also

- How to [compare documents](/comparison/java/how-to-compare-documents-in-the-easiest-way) in the easiest way
- How to [compare AutoCAD](/comparison/java/how-to-compare-autocad-drawings) drawings
- How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
- How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
- How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
- How to [use Google Drive API as files source](/comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api) for comparing documents in Java or Kotlin
