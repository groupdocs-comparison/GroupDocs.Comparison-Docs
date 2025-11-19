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

The following code snippet shows how to compare documents with specific sensitivity:

```javascript
'use strict';

// Import the GroupDocs Comparison Node.js SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Define file paths for source, target and output documents
const sourceFile = 'sample-files/source.docx';
const targetFile = 'sample-files/target.docx';
const resultFile = 'result.docx';

// Initialize the comparer with the source document
const comparer = new groupdocs.Comparer(sourceFile);

// Add the target document to the comparison list
comparer.add(targetFile);

// Create comparison options and configure sensitivity
const compareOptions = new groupdocs.CompareOptions();
compareOptions.setSensitivityOfComparison(100); // 0 (low) to 100 (high) sensitivity

// Run the comparison and save the result to the output file
comparer.compare(resultFile, compareOptions);

// Terminate the process with a success exit code
process.exit(0);
```

This example creates a `Comparer` instance with the source document, adds the target document, and creates a `CompareOptions` object. It sets the sensitivity to 100 (maximum sensitivity for best quality) using `setSensitivityOfComparison()`, then performs the comparison with these options. Higher sensitivity values (closer to 100) provide more accurate comparison but slower performance, while lower values (closer to 0) are faster but may miss some differences.

The result is as follows:

|            SensitivityOfComparison = 50                             |                         SensitivityOfComparison = 100                            |
| :-----------------------------------------------------------------: | :----------------------------------------------------------------: |
| ![](/comparison/nodejs-java/images/sensitivity50.png) | ![](/comparison/nodejs-java/images/sensitivity100.png) |
