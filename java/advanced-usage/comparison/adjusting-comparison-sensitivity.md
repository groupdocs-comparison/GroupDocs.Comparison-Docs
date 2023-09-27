---
id: adjusting-comparison-sensitivity
url: comparison/java/adjusting-comparison-sensitivity
title: Adjusting comparison sensitivity
weight: 2
description: "Learn more about document comparison sensitivity and how to adjust it to achieve best performance and accuracy when compare documents with GroupDocs.Comparison for Java."
keywords: Comparison sensitivity, comparison detalisation level, compare documents, file comparison
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Java language and GroupDocs.Comparison for Java
    productCode: comparison
    productPlatform: java
  showVideo: True
  howTo:
    name: How to adjusting comparison sensitivity in Java
    description: Learn how to adjusting comparison sensitivity in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify SensitivityOfComparison.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to adjust comparison sensitivity to achieve the necessary balance between the comparison speed and accuracy. Possible comparison sensitivity values range is from **0** to **100**.

- **Minimal value** (**0**) sets sensitivity to a minimal value provides the fastest comparison speed, but it may produce worst comparison quality. If there is at least one common letter in two compared words then these words are not treated as fully inserted and deleted
- **Value by default** means **75**. Comparison occurs when the percentage of deleted or inserted elements in relation to all elements does not exceed 75%
- **Maximum value** (**100**) provides the best quality, but slowest comparison speed. Comparison occurs at any length of a common sub-sequence of two compared objects

For better understanding about how comparison algorithms work let's suppose we have two strings:

| Strings                          |
| -------------------------------- |
| ` 1``. It is our equity poetry ` |
| ` 2``. Jack is a glad calf `     |

So, these strings have two common sub-sequences: "**is**" word and 4 space symbols.   
Common sub-sequence is - " **is** " and its length is 4 symbols (there are 2 space symbols in it).  
Length of inserted sub-sequence is 13 symbols - **Jackagladcalf**  
Removed sub-sequence length is 17 symbols - **Itourequitypoetry\*_  
Lets calculate percent of removed and inserted symbols: (17 + 13) / (17 + 13 + 4) * 100 = 88%

*Case 1.* If **SensitivityOfComparison = 80%** comparison of these two strings produces the next result:  
**Jack is a glad calfIt is our equity poetry**

Because calculated percent of removed and inserted symbols equals **88%** and it is bigger than value of **SensitivityOfComparison** equals **80%** then this common sub-sequence will be not taken into account.  
The first string considered completely removed and the second string considered completely inserted. The same results are produced for any calculated percent less than **83%**.

_Case 2._ If **SensitivityOfComparison = 89%**, comparison of these two strings produces the next result:  
**JackIt is aour gladequity calfpoetry**

Common sub-sequence was found, because **89% > 88%**. The same results are produced for any calculated percent bigger than **88%**.

To compare documents with specific comparison sensitivity, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target document path or stream.
3.  Instantiate the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions) object. Call the  [setSensitivityOfComparison()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setSensitivityOfComparison-int-) method to specify the appropriate value.
4.  Call the [compare()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method. Specify the [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions) object.

The following code snippet shows how to compare documents with specific sensitivity:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
try (Comparer comparer = new Comparer(sourceFile)) {
    comparer.add(targetFile);

    CompareOptions compareOptions = new CompareOptions();
    compareOptions.setSensitivityOfComparison(100);

    final Path resultPath = comparer.compare(resultFile, compareOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

|            SensitivityOfComparison = 50                             |                         SensitivityOfComparison = 100                            |
| :-----------------------------------------------------------------: | :----------------------------------------------------------------: |
| ![](/comparison/java/images/sensitivity50.png) | ![](/comparison/java/images/sensitivity100.png) |
