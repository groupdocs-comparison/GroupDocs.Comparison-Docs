---
id: optimize-document-comparison-performance
url: comparison/nodejs-java/optimize-document-comparison-performance
title: Batch Word Document Comparison with Performance Optimization in Node.js
weight: 1
description: "Learn how to efficiently compare large sets of Word (DOCX) files using GroupDocs.Comparison for Node.js with parallel processing and performance tuning."
keywords: groupdocs.comparison, nodejs, batch comparison, word, docx, performance optimization, parallel processing, document diff, scalability, api
productName: GroupDocs.Comparison for Node.js via Java
toc: true
hideChildren: false
---

{{< alert style="info" >}} 💡For the **complete working code** and detailed explanations, please refer to the [full repository here](https://github.com/groupdocs-comparison/batch-document-comparison-performance).  
This repository contains all source files, helper classes, and configuration examples.{{< /alert >}}


## Overview

This use‑case demonstrates how to perform high‑throughput batch comparison of Word documents (DOCX/DOC) with **GroupDocs.Comparison for Node.js via Java**. It shows how to:

- Discover matching source‑target file pairs.
- Compare documents sequentially or in parallel.
- Apply performance‑tuned `CompareOptions`.
- Monitor progress and generate a summary report.

The approach is ideal for scenarios such as document version control, compliance auditing, or large‑scale content migration where thousands of document pairs must be examined quickly and reliably.

## Prerequisites

- **Node.js** v20 LTS or newer. (`node --version`)
- **Java Runtime / JDK** 8+ (recommended 17 LTS). (`java -version`)
- **JAVA_HOME** environment variable pointing to the JDK installation.
- **GroupDocs.Comparison npm package** (`@groupdocs/groupdocs.comparison`).
- A **temporary or permanent GroupDocs.Comparison license** (place the key in `src/utils/licenseHelper.js`).

## Installation

```bash
# Clone the sample repository (or copy the relevant files into your project)
git clone https://github.com/groupdocs-comparison/batch-document-comparison-performance
cd batch-document-comparison-performance/src

# Install Node.js dependencies
npm install
```

{{< alert style="info" >}}💡 The `package.json` declares the required Node version (`>=20.0.0`) and the GroupDocs.Comparison dependency (`^25.11.0`).{{< /alert >}}

## Repository Structure

```
sample-project/
├─ src/
│  ├─ batchComparison.js          # Core comparison utilities
│  ├─ examples/                 # Ready‑to‑run demos
│  │   ├─ basicBatchComparison.js      # Sequential processing
│  │   ├─ parallelBatchComparison.js   # Parallel processing (configurable concurrency)
│  │   ├─ optimizedBatchComparison.js # Performance‑tuned run
│  │   ├─ batchWithProgress.js        # Progress‑bar demo
│  │   └─ performanceBenchmark.js     # Benchmark sequential vs parallel
│  └─ utils/
│      ├─ fileHelper.js          # File‑system helpers
│      ├─ licenseHelper.js       # License loading
│      ├─ performanceMonitor.js  # Timing & memory helpers
│      └─ constants.js           # Shared constants
├─ sample-files/                # Input Word docs (source/ & target/ subfolders)
├─ output/                      # Generated comparison results
├─ README.md
└─ package.json
```

## Usage Example

The following steps walk you through a **parallel batch comparison** – the fastest strategy for large workloads.

1. **Prepare the input directories**
   - Place matching Word files in `sample-files/source/` and `sample-files/target/`.
   - Filenames must be identical (e.g., `contract_v1.docx` in both folders).

2. **Run the parallel example**

   ```bash
   # Windows (cmd) – the script sets the required Java option
   npm run example:parallel
   ```

   The script executes `src/examples/parallelBatchComparison.js`, which:
   - Calls `findWordPairs` to locate matching pairs.
   - Processes the pairs in batches (default concurrency = 5).
   - Emits a progress line after each batch.
   - Writes comparison results to `output/` as `comparison_<basename>.docx`.

3. **Inspect the generated report**

   After the run completes, a summary is printed to the console. It includes total documents, success rate, total duration, average time per document, and throughput.

   ```text
   ================================================================================
   Batch Comparison Summary
   ================================================================================
   Total Documents:     120
   Successful:          118
   Failed:              2
   Success Rate:        98.33%

   Performance Metrics:
     Total Duration:    42.67s
     Average Duration:   360.42ms per document
     Throughput:        2.76 documents/second
     Concurrency:        5
   ================================================================================
   ```

4. **(Optional) Run the optimized demo**

   If you need the fastest possible run, use the tuned example that disables unnecessary comparison features:

   ```bash
   npm run example:optimized
   ```

   This script supplies a `CompareOptions` object that:
   - Disables style detection when not required.
   - Generates a lightweight summary page only.
   - Sets `sensitivity` to `Medium` for a good speed‑accuracy trade‑off.

{{< alert style="warning" >}}⚠️ **Memory‑Intensive Workloads** – If you encounter `Java heap space` or Node `out of memory` errors, reduce the `concurrency` value in `parallelBatchComparison.js` or launch Node with a larger heap (`node --max-old-space-size=4096`).{{< /alert >}}

## Notes

- **License** – The sample uses a temporary license. Replace the placeholder in `src/utils/licenseHelper.js` with your permanent license string for production use.
- **Java Options** – The npm scripts prepend `JAVA_TOOL_OPTIONS=--enable-native-access=ALL-UNNAMED`. Adjust or remove this flag if your Java version does not require it.
- **Error Handling** – Individual pair failures are logged but do not abort the batch. The summary report lists both successes and failures.
- **Performance Tuning** – Experiment with the `concurrency` variable and `CompareOptions` to find the optimal balance for your hardware and document sizes.

## See Also

-   [Legal Document Comparison API: Automate Contract Review with Node.js](https://blog.groupdocs.com/comparison/legal-document-comparison-api-contract-review-automation-nodejs/)
-   [Optimize Document Comparison Performance: Scale to Millions of Files with Node.js](https://blog.groupdocs.com/comparison/optimize-document-comparison-performance-scale-millions-files-nodejs/)
- [Free Support Forum](https://forum.groupdocs.com/c/comparison/12)
- [GitHub Repository – Full Source Code](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Node.js-via-Java)
