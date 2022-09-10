---
id: how-to-compare-autodesk-drawing-exchange-format-documents
url: comparison/java/how-to-compare-autodesk-drawing-exchange-format-documents
title: How to compare Autodesk Drawing eXchange Format Documents
weight: 23
description: "Reading this article you will find out how to compare Autodesk Drawing eXchange Format Documents (DXF)"
keywords: How to compare AutoCAD files, CAD files diff, Compare Autodesk Drawing, Compare DXF
productName: GroupDocs.Comparison for Java
hideChildren: False
structuredData:
    showOrganization: True
    application:
        name: Compare AutoCad DXF files
        description: The product allows to compare AutoCad DXF files
        productCode: comparison
        productPlatform: java
    howTo:
        name: How to compare DXF (Autodesk Drawing eXchange Format) documents
        description: Find out how to compare DXF (Autodesk Drawing eXchange Format) documents
        steps:
        - name: Load source AutoCad DXF document
          text: Create an instance of Comparer class passing source AutoCad DXF document as a constructor parameter
        - name: Load target AutoCad DXF document
          text: Add one or more target AutoCad DXF documents to compare them with source one
        - name: Compare source and target AutoCad DXF documents
          text: Run comparison process passing path where the result of the comparison will be saved
---
Usually it is very difficult to determine changes that have been made in Autodesk DXF (Drawing eXchange Format) documents. In the same time it is highly popular issue, especially nowadays, when lots of companies have employee who works remotely. Fortunately, with [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) you can easily compare two DXF documents as well as other [supported file formats]({{< ref "comparison/java/getting-started/supported-document-formats.md" >}})

## Highlighting changes comparing Autodesk Drawing Format

The result of comparison can be saved as PDF file with highlighting changed, deleted or inserted elements. You can easily change highlighting colors so that changes will be marked differently. Default colors are:

*   Objects that were deleted – <font color="red">**red**</font>
*   Objects that were inserted – <font color="blue">**blue**</font>
*   Objects that were changed – <font color="green">**green**</font>

## How to Compare Autodesk Drawing eXchange Format documents using GroupDocs.Comparison

To compare DXF (Autodesk Drawing eXchange Format) documents you should do next:

1. Create new instance of [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) class passing source document path or stream as an argument
2. Call [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) method passing target document path or stream as an argument
3. Call [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) method to run the comparison process

The following Java code sample demonstrates an approach described above:

<script src="https://gist.github.com/groupdocs-comparison-gists/c7a7f2c57521c83202818207264b6536.js"></script>

The same thing you can do in Kotlin:

<script src="https://gist.github.com/groupdocs-comparison-gists/b115da918c69f21d1ce7a36dc2874c98.js"></script>

Here are examples of source, target and result documents:

| Source DXF (Autodesk Drawing eXchange Format) document                                           | Target DXF (Autodesk Drawing eXchange Format) document                                           |
|--------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------|
| ![](/comparison/java/images/how-to-compare-autodesk-drawing-exchange-format-documents-source.png) | ![](/comparison/java/images/how-to-compare-autodesk-drawing-exchange-format-documents-target.png) |

|                    Result PDF document                                                           |
|:------------------------------------------------------------------------------------------------:|
| ![](/comparison/java/images/how-to-compare-autodesk-drawing-exchange-format-documents-result.png) |


### How to use additional comparison options

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) library has lots of options that can be used to customize comparison process as well as the result file. Here are just a few options are shown. For more details look [the documentation](/comparison/java/getting-started/)

#### Generating summary page

You can easily enable generating special page where will be shown summary information about changes in the document. Moreover, you can enable generating extended summary page to get much more detailed information. 

Here is code example for Java:

<script src="https://gist.github.com/groupdocs-comparison-gists/6820d8c552709a6bb49923f2633ce20f.js"></script>

The same you can do in Kotlin application:

<script src="https://gist.github.com/groupdocs-comparison-gists/40d05bf0aaf79e156fb57123d59e62f6.js"></script>

#### Customizing change style

To use custom change style just configure comparer so that it will highlight changes the way you want.

Here is code example for Java:

<script src="https://gist.github.com/groupdocs-comparison-gists/34cd530807eb1d374774c73978e055c2.js"></script>

In Kotlin it works the same way:

<script src="https://gist.github.com/groupdocs-comparison-gists/6ebabe0c0626c7bbabb12ae355b09b4f.js"></script>

### Get a Free API License

Most of the settings, for example generating summary page, sensitivity of comparison and so on are available only with license. You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) in order to use the API without evaluation limitations.

### Conclusion

In this article is written about comparing DXF (Autodesk Drawing eXchange Format) documents using [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) library. The library can be easily embedded to any Java or Kotlin, desktop or web application on any platform. There are samples of using Comparison API inside web applications on [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). They are free to be modified and used for comparing AutoCad drawings, photos, Excel, Word, code files, PowerPoint Presentations and other [supported file formats](/comparison/java/supported-document-formats/).

For more details, options, and examples, you can go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Reach us [on the forum](https://forum.groupdocs.com/) for your queries.

### Free Online App
Along with full-featured Java library we provide simple, but powerful free Apps.
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSGand other documents with free to use online **[GroupDocs Comparison App](https://products.groupdocs.app/comparison)**.

### See also

* How to [compare documents](/comparison/java/how-to-compare-documents-in-the-easiest-way) in the easiest way
* How to [compare AutoCAD](/comparison/java/how-to-compare-autocad-drawings) drawings
* How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
* How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
* How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
* How to [use Google Drive API as files source](/comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api) for comparing documents in Java or Kotlin
