---
id: legal-document-comparison
url: comparison/nodejs-java/legal-document-comparison
title: Compare Word Documents in Node.js
weight: 1
description: "Learn how to compare Word documents programmatically using GroupDocs.Comparison for Node.js via Java. Compare documents with custom styling, handle password-protected files, and use streams for memory-efficient processing."
keywords: document comparison api, word comparison nodejs, docx comparison, compare documents nodejs, document diff api, password protected comparison, custom styling comparison, stream comparison
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

{{< alert style="info" >}} 💡For the **complete working code** and detailed explanations, please refer to the [full repository here](https://github.com/groupdocs-comparison/nodejs-compare-word-documents-sample).  
This repository contains all source files, helper classes, and configuration examples to implement Word document comparison in your Node.js applications.{{< /alert >}}


This article demonstrates how to compare **Word documents** (DOCX) using **GroupDocs.Comparison for Node.js via Java**.\
The sample project provides ready-to-use examples that enable developers to quickly identify document differences with customizable styling, password protection support, and stream-based processing.

Word document comparison is essential for **legal document review**, **contract versioning**, **compliance auditing**, and **document version control**.  
With GroupDocs.Comparison for Node.js via Java, you can automate document comparison workflows and generate result documents that highlight insertions, deletions, and modifications with configurable visual styles.


> 💡 Use this approach when you need to automatically detect and highlight differences between Word document versions without manual review.

## Prerequisites

Before proceeding, make sure you have:

-   **GroupDocs.Comparison for Node.js via Java** installed. [Get a free trial](https://purchase.groupdocs.com/temp-license/107398).
-   **Node.js** >=20.0.0 installed.
-   **Java Runtime / JDK** 8+ (Java 17 recommended).
-   `JAVA_HOME` environment variable configured.


## Installation

Clone or download the [sample repository](https://github.com/groupdocs-comparison/nodejs-compare-word-documents-sample).

``` bash
git clone https://github.com/groupdocs-comparison/nodejs-compare-word-documents-sample.git
cd nodejs-compare-word-documents-sample
```

Install dependencies with npm:

``` bash
npm install
```

## Repository Structure

The project includes:

    nodejs-compare-word-documents-sample/
     ├── src/
     │   ├── compareWordDocuments.js      # Core comparison functions
     │   ├── examples/
     │   │   ├── basicComparison.js       # Basic comparison example
     │   │   ├── advancedComparison.js    # Advanced styling example
     │   │   ├── passwordProtectedComparison.js  # Password-protected comparison
     │   │   └── streamComparison.js      # Stream-based comparison
     │   └── utils/
     │       ├── fileHelper.js            # File utilities
     │       ├── licenseHelper.js         # License management
     │       └── constants.js             # Configuration constants
     ├── sample-files/                    # Input Word documents
     ├── package.json
     └── README.md
    

## Usage Example

Below is a simplified version of the sample code. For the full implementation, see the [repository](https://github.com/groupdocs-comparison/nodejs-compare-word-documents-sample).

### Basic comparison

`compareWordDocuments.js` provides the core function for comparing Word documents:

``` javascript
const { compareWordDocuments } = require('./src/compareWordDocuments');

// Compare two Word documents
await compareWordDocuments(
  'sample-files/source.docx',
  'sample-files/target.docx',
  'output/result.docx'
);
```

### Advanced comparison with custom styling

`compareWordDocuments.js` also includes a function for custom styling:

``` javascript
const { compareWordDocumentsWithStyles } = require('./src/compareWordDocuments');
const java = require('java');
const Color = java.import('java.awt.Color');

// Configure custom styles
const styleConfig = {
  inserted: {
    highlightColor: Color.BLUE,
    fontColor: Color.BLUE,
    bold: true,
    underline: true
  },
  deleted: {
    highlightColor: Color.RED,
    fontColor: Color.RED,
    bold: true,
    strikethrough: true
  },
  changed: {
    highlightColor: Color.GREEN,
    fontColor: Color.GREEN,
    bold: true,
    underline: true
  },
  generateSummaryPage: true
};

await compareWordDocumentsWithStyles(
  'sample-files/source.docx',
  'sample-files/target.docx',
  'output/result_styled.docx',
  styleConfig
);
```

### Compare password-protected documents

`passwordProtectedComparison.js` demonstrates handling encrypted documents:

``` javascript
const { compareWordDocuments } = require('./src/compareWordDocuments');

await compareWordDocuments(
  'sample-files/source_protected.docx',
  'sample-files/target_protected.docx',
  'output/result_protected.docx',
  {
    loadOptions: {
      sourcePassword: 'source_password_123',
      targetPassword: 'target_password_123'
    }
  }
);
```

### Stream-based comparison

`streamComparison.js` shows how to compare documents using Java input streams:

``` javascript
const groupdocs = require('@groupdocs/groupdocs.comparison');
const java = require('java');
const FileInputStream = java.import('java.io.FileInputStream');

const sourceInputStream = new FileInputStream('sample-files/source.docx');
const targetInputStream = new FileInputStream('sample-files/target.docx');

const comparer = new groupdocs.Comparer(sourceInputStream);
comparer.add(targetInputStream);

await comparer.compare('output/result_stream.docx');

sourceInputStream.close();
targetInputStream.close();
```

## Notes

-   Replace file paths with your actual document locations.
-   Default styling uses blue for inserted content, red for deleted content, and green for modified content.
-   Summary page generation provides a consolidated view of all changes in a single page.
-   Stream-based comparison is useful when documents are loaded from memory or network sources.
-   For detailed examples and advanced scenarios, see the [full repository](https://github.com/groupdocs-comparison/nodejs-compare-word-documents-sample).

## See Also

-   [Compare Documents]({{< ref "comparison/nodejs-java/comparison-basic/compare-documents" >}})
-   [Customize Changes Styles]({{< ref "comparison/nodejs-java/advanced-usage/comparison/customize-changes-styles" >}})
-   [Load Password-Protected Documents]({{< ref "comparison/nodejs-java/advanced-usage/loading/load-password-protected-documents" >}})
-   [Legal Document Comparison API: Automate Contract Review with Node.js](https://blog.groupdocs.com/comparison/legal-document-comparison-api-contract-review-automation-nodejs/)
-   [Optimize Document Comparison Performance: Scale to Millions of Files with Node.js](https://blog.groupdocs.com/comparison/optimize-document-comparison-performance-scale-millions-files-nodejs/)

