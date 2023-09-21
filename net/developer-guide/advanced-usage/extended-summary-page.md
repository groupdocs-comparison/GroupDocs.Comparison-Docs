---
id: extended-summary-page
url: comparison/net/extended-comparison-statistics-on-summary-page
title: Show extended comparison statistics on Summary Page
weight: 12
description: "This article explains how to use the extended comparison summary document page as a built-in feature in GroupDocs.Comparison for .NET."
keywords: ExtendedSummaryPage
productName: GroupDocs.Comparison for .NET
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using C# language and GroupDocs.Comparison for .NET
    productCode: comparison
    productPlatform: net
  showVideo: True
  howTo:
    name: How to show extended statistic of comparison on Summary Page
    description: Learn how to use show extended comparison on Summary Page
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify ExtendedSummaryPage of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

---

Starting from version 23.9 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** provides the ability to display extended comparison statistics on the summary pate. This feature currently supported for Words, PDF, Diagrams, HTML and raw text formats.

By default, the ExtendedSummaryPage option is _false_. Below are the steps to turn on the ExtendedSummaryPage:

- Instantiate [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) object with source file path or stream;
- Call [Add](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) method and specify target file path or stream;
- Instantiate [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object and set [ExtendedSummaryPage](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/extendedsummarypage) property to _true_;
- Call [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) method and pass [CompareOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) object from previous step.

## Example how to display extended comparison statistics on summary page

---

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions options = new CompareOptions() {ExtendedSummaryPage = true};
    comparer.Compare(resultPath, options);
}
```
For Diagrams and HTML extended statistics a bit different then for other formats. See examples below.

## Example of extended comparison statistics on summary page for PDF

---

|                     ExtendedSummaryPage true                      |
| :------------------------------------------------------------: |
| ![](/comparison/net/images/summary-page-with-extended-statistics-pdf.png) |

## Example of extended comparison statistics on summary page for HTML

---

|                     ExtendedSummaryPage true                      |
| :-------------------------------------------------------------: |
| ![](/comparison/net/images/summary-page-with-extended-statistics-html.png) |

The extended statistics of HTML take into count the number of tags.

## Example of extended comparison statistics on summary page for Diagrams

---

|                     ExtendedSummaryPage true                      |
| :-------------------------------------------------------------: |
| ![](/comparison/net/images/summary-page-with-extended-statistics-vsdx.png) |

The extended statistics of Diagram take into count the number of tags.

## Example of a result without the extended statistics for HTML

---

|                     ExtendedSummaryPage false                      |
| :-------------------------------------------------------------: |
| ![](/comparison/net/images/summary-page-without-extended-statistics-pdf.png) |

## Example of a result without the extended statistics for HTML

---

|                     ExtendedSummaryPage false                      |
| :-------------------------------------------------------------: |
| ![](/comparison/net/images/summary-page-without-extended-statistics-html.png) |

## Example of a result without the extended statistics for Diagrams

---

|                     ExtendedSummaryPage false                      |
| :-------------------------------------------------------------: |
| ![](/comparison/net/images/summary-page-without-extended-statistics-vsdx.png) |

## More resources

---

### GitHub Examples

You may easily run the code above and see the feature in action in our GitHub examples:

- [GroupDocs.Comparison for .NET examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
- [GroupDocs.Comparison for Java examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
- [Document Comparison for .NET MVC UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
- [Document Comparison for .NET App WebForms UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
- [Document Comparison for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
- [Document Comparison for Java Spring UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)

### Free Online App

Along with full-featured .NET library we provide simple, but powerful free Apps.  
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
