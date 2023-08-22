---
id: adjusting-comparison-sensitivity
url: comparison/net/adjusting-comparison-sensitivity
title: Adjusting comparison sensitivity
weight: 2
description: "Learn more about document comparison sensitivity and how to adjust it to achieve best performance and accuracy when compare documents with GroupDocs.Comparison for .NET."
keywords: Comparison sensitivity, comparison detalisation level, compare documents, file comparison
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
    name: How to adjusting comparison sensitivity in .NET
    description: Learn how to adjusting comparison sensitivity in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify SensitivityOfComparison.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to adjust comparison sensitivity to achieve the necessary balance between the comparison speed and accuracy. Possible comparison sensitivity values range is from **0** to **100**.

- **Minimal value** (**0**) sets sensitivity to a minimal value provides the fastest comparison speed, but it may produce worst comparison quality. If there is at least one common letter in two compared words then these words are not treated as fully inserted and deleted
- **Value by default** means **75**. Comparison occurs when the percentage of deleted or inserted elements in relation to all elements does not exceed 75%
- **Maximum value** (**100**) provides the best quality, but slowest comparison speed. Comparison occurs at any length of a common sub-sequence of two compared objects

For better understanding about how comparison algorithms work let's suppose we have two strings:

| Strings                          |
| -------------------------------- |
| ` 1``. It is our equity poetry ` |
| ` 2``. Jack is a glad calf `     |

We highlight removed text parts with <font color="red">**red**</font> and inserted parts with <font color="blue">**blue**</font> color. So, these strings have two common sub-sequences: "**is**" word and 4 space symbols.   
**  
Common sub-sequence is - " **is** " and its length is 6 symbols (there are 4 space symbols in it).  
Length of inserted sub-sequence is 13 symbols - **Jackagladcalf**  
Removed sub-sequence length is 17 symbols - **Itourequitypoetry\*_  
Lets calculate percent of removed and inserted symbols: (17 + 13) / (17 + 13 + 6) _ 100 = 83%

*Case 1.* If **SensitivityOfComparison = 80%** comparison of these two strings produces the next result:  
**Jack is a glad calfIt is our equity poetry**

Because calculated percent of removed and inserted symbols equals **83%** and it is bigger than value of **SensitivityOfComparison** equals **80%** then this common sub-sequence will be not taken into account.  
The first string considered completely removed and the second string considered completely inserted. The same results are produced for any calculated percent less than **83%**.

_Case 2._ If **SensitivityOfComparison = 85%**, comparison of these two strings produces the next result:  
**JackIt is aour gladequity calfpoetry**

Common sub-sequence was found, because **85% > 83%**. The same results are produced for any calculated percent bigger than **83%**.

To compare documents with specific comparison sensitivity, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method. Specify the target document path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) object. Specify the appropriate  [SensitivityOfComparison](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions/properties/sensitivityofcomparison) value.
4.  Call the [Compare](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.comparer/compare/methods/1) method. Specify the [CompareOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) object.

The following code snippet shows how to compare documents with specific sensitivity:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    CompareOptions options = new CompareOptions() { SensitivityOfComparison = 100 };
	comparer.Compare("result.docx", options);
}
```
{{< /tab >}}
{{< /tabs >}}