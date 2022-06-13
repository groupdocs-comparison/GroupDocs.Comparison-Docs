---
id: evaluation-limitations-and-licensing-of-groupdocs-comparison
url: comparison/java/evaluation-limitations-and-licensing-of-groupdocs-comparison
title: Licensing and Evaluation Limitations
weight: 5
description: ""
keywords: 
productName: GroupDocs.Comparison for Java
hideChildren: False
structuredData:
    showOrganization: True
    application:
        name: Documents Comparison Tool
        description: The product allows to compare Pdf, Word, Excel, PowerPoint, AutoCad, Image, Code and much more file formats. Comparison API also supports accepting or rejecting changes, extracting document information and generating comparison report
        productCode: comparison
        productPlatform: java
    howTo:
        name: How to apply Comparison API license
        description: Learn how to apply Comparison API license to make it free from evaluation limitations
        steps:
        - name: Create License object
          text: Create object that will be used to set license
        - name: Apply license
          text: Call special method that will set the license and pass license path or input stream
---
{{< alert style="info" >}}You can use **[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** without the license. The usage and functionalities are pretty much same as the licensed one but you will face few limitations while using the non-licensed API.{{< /alert >}}

## Evaluation Limitations

You can easily download **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** for evaluation. The evaluation download is the same as the purchased download. The evaluation version simply becomes licensed when you add a few lines of code to apply the license. You will face following limitations while using the API without the license:

*   Only first 3 document pages with simple structure are processed.
*   PDF documents should not have more then four elements in any collection.
*   Trial badges are placed in the document on the top of each page.

## Licensing

The license file contains details such as the product name, number of developers it is licensed to, subscription expiry date and so on. It contains the digital signature, so don't modify the file. Even inadvertent addition of an extra line break into the file will invalidate it. You need to set a license before utilizing GroupDocs.Comparison API if you want to avoid its evaluation limitations.  License can be applied using file path or stream.

### Apply License Using License File Path

Code given below justifies how to apply license using file path.

<script src="https://gist.github.com/groupdocs-comparison-gists/2aa6cce718010e6cf2f4ab7c302eb9ec.js"></script>

### Apply License Using License File Stream

Code given below explains how to apply license using stream.

<script src="https://gist.github.com/groupdocs-comparison-gists/49086ed66a09eef3d6c994f4b9619158.js"></script>

{{< alert style="info" >}}Calling License#setLicense multiple times is not harmful but simply wastes processor time. Call License#setLicense in your startup code, before using GroupDocs.Comparison API for compare two or more files in applications on the Java platform. Compiled file shows line-by-line difference of content, paragraphs, characters, styles, shapes and positions.
classes.{{< /alert >}}

### Setting Metered License

{{< alert style="info" >}}You can also set Metered license as an alternative to license file. It is a new licensing mechanism that will be used along with existing licensing method. It is useful for the customers who want to be billed based on the usage of the API features. For more details, please refer to [Metered Licensing FAQ](https://purchase.groupdocs.com/faqs/licensing/metered) section.{{< /alert >}}

Create metered object and use method `setMeteredKey`

<script src="https://gist.github.com/groupdocs-comparison-gists/66fea81ce49f8f21712694c3e84060fb.js"></script>

To check current consumption quantity:
1.  Call method `getConsumptionQuantity` of the `Metered` class.
2.  It will return the amount/quantity of API requests that you have consumed so far.
3.  call method `getConsumptionCredit` of the `Metered` class.
4.  It will return the credit that you have consumed so far.

<script src="https://gist.github.com/groupdocs-comparison-gists/0d513af900199bea0cf9ee1a46a61912.js"></script>
