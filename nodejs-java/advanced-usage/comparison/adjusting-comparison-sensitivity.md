---
id: adjusting-comparison-sensitivity
url: comparison/nodejs-java/adjusting-comparison-sensitivity
title: Adjusting comparison sensitivity
weight: 2
description: "Learn more about document comparison sensitivity and how to adjust it to achieve best performance and accuracy when comparing documents with GroupDocs.Comparison for Node.js via Java."
keywords: Comparison sensitivity, comparison detalisation level, compare documents, file comparison
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using JavaScript language and GroupDocs.Comparison for Node.js via Java
    productCode: comparison
    productPlatform: nodejs-java
  showVideo: True
  howTo:
    name: How to adjust comparison sensitivity in JavaScript
    description: Learn how to adjust comparison sensitivity in JavaScript step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target file
        text: Add the path to the target file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify SensitivityOfComparison.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to adjust comparison sensitivity to achieve the necessary balance between the comparison speed and accuracy. Possible comparison sensitivity value ranges from **0** to **100**.

- **Minimal value** (**0**) sets sensitivity to a minimal value providing the fastest comparison speed, but it may produce the worst comparison quality. If there is at least one common letter in two compared words then these words are not treated as fully inserted and deleted
- **Value by default** means **75**. Comparison occurs when the percentage of deleted or inserted elements in relation to all elements does not exceed 75%
- **Maximum value** (**100**) provides the best quality, but slowest comparison speed. Comparison occurs at any length of a common sub-sequence of two compared objects

For a better understanding of how comparison algorithms work let's suppose we have two strings:

| Strings                          |
| -------------------------------- |
| 1. It is our equity poetry  |
| 2. Jack is a glad calf      |

So, these strings have two common sub-sequences: "**is**" word and 4 space symbols.  
Common sub-sequence is - " **is** " and its length is 4 symbols (there are 2 space symbols in it).  
The length of the inserted sub-sequence is 13 symbols - **Jackagladcalf**  
Removed sub-sequence length is 17 symbols - **Itourequitypoetry**  

Let's calculate the percent of removed and inserted symbols: (17 + 13) / (17 + 13 + 4) * 100 = 88%

*Case 1.* If **SensitivityOfComparison = 80%**, the comparison of these two strings produces the next result:  
**Jack is a glad calfIt is our equity poetry**

Because the calculated percent of removed and inserted symbols (**88%**) is greater than the **SensitivityOfComparison** value (**80%**), then this common sub-sequence will be not taken into account.  
The first string will be considered as completely removed, and the second string will be considered as completely inserted. The same results are produced for any calculated percent less than **88%**.

_Case 2._ If **SensitivityOfComparison = 89%**, the comparison of these two strings produces the next result:  
**JackIt is aour gladequity calfpoetry**

A common sub-sequence was found because the calculated percent of removed and inserted symbols (**88%**) is less than the **SensitivityOfComparison** value (**89%**). The same results are produced for any calculated percent bigger than **88%**.

To compare documents with specific comparison sensitivity, follow these steps:

1.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer)--> object. Specify the source document path or stream.
2.  Call the `add()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method. Specify the target document path or stream.
3.  Instantiate the `CompareOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions)--> object. Call the `setSensitivityOfComparison()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions/#setSensitivityOfComparison-int-)--> method to specify the appropriate value.
4.  Call the `compare()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#compare-java.lang.String-)--> method. Specify the `CompareOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/compareoptions)--> object.

The following code snippet shows how to compare documents with specific sensitivity:

```javascript
const comparer = new groupdocs.comparison.Comparer(sourceFile);
comparer.add(targetFile);

const compareOptions = new groupdocs.comparison.CompareOptions();
compareOptions.setSensitivityOfComparison(100);

const resultPath = comparer.compare(resultFile, compareOptions);
```

The result is as follows:

|            SensitivityOfComparison = 50                             |                         SensitivityOfComparison = 100                            |
| :-----------------------------------------------------------------: | :----------------------------------------------------------------: |
| ![](/comparison/nodejs-java/images/sensitivity50.png) | ![](/comparison/nodejs-java/images/sensitivity100.png) |
