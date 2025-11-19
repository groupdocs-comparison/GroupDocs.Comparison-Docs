---
id: licensing-and-evaluation-limitations
url: comparison/nodejs-java/licensing-and-evaluation-limitations
title: Licensing
weight: 5
description: "Follow the instructions on this page to configure the license and find out the restrictions when using GroupDocs.Comparison for Node.js via Java without a license (Evaluation Limitations)"
keywords: Licensing, evaluation limitations, set metered license, setting license
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

Sometimes, to study the system better, you want to dive into the code as fast as possible. To make this easier, GroupDocs.Comparison provides different purchase plans or offers a Free Trial and a 30-day Temporary License for evaluation.

{{< alert style="info" >}}
Note that there are several general policies and practices that guide you on how to evaluate, properly license, and purchase our products. You can find them in the ["Purchase Policies and FAQ"](https://purchase.groupdocs.com/policies) section.
{{< /alert >}}

## Free Trial or Temporary License

You can try GroupDocs.Comparison without buying a license.

### Free Trial

The evaluation version is the same as the purchased one – the evaluation version simply becomes licensed when you set the license. You can set the license in several ways that are described in the next sections of this article.

The evaluation version comes with the following limitations:

- Only the first 2 pages can be processed.
- Trial badges are placed in the document on the top of each page.

### Temporary License

If you wish to test GroupDocs.Comparison without the limitations of the trial version, you can also request a 30-day Temporary License. For details, see the ["Get a Temporary License"](https://purchase.groupdocs.com/temporary-license) page.

## How to set up a license

{{< alert style="info" >}}

You can find the pricing information on the ["Pricing Information"](https://purchase.groupdocs.com/pricing/comparison/nodejs-java) page.

{{< /alert >}}

After getting the license, you need to set it. This section describes different ways to set the license.

The license should be set:

- Only once per application domain.
- Before using any other GroupDocs.Comparison classes.

{{< alert style="info" >}}

The license can be set multiple times per application domain, but we recommend doing it once since all the subsequent calls to the `setLicense` method except for the first one will just waste processor time.

{{< /alert >}}

### Set License from File

The following code snippet shows how to set a license from a file:

```javascript
'use strict';

// Load the GroupDocs Comparison SDK for Node.js
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Path to the license file
const licensePath = 'GroupDocs.Comparison.lic';

// Create a License object and set the license
const license = new groupdocs.License();
license.setLicense(licensePath);

// Terminate the process with a success exit code
process.exit(0);
```

### Set License from Stream

The following code snippet shows how to set a license from a stream:

```javascript
'use strict';

// Load the GroupDocs Comparison SDK for Node.js
const groupdocs = require('@groupdocs/groupdocs.comparison');
const java = require('java');

// Create a reference to Java's FileInputStream class
let InputStream = java.import('java.io.FileInputStream');

// Path to the license file
const licensePath = 'GroupDocs.Comparison.lic';

// Initialize a FileInputStream for the license file
const stream = new InputStream(licensePath);

// Create a License object and set the license using the InputStream
const license = new groupdocs.License();
license.setLicense(stream);

// Terminate the process with a success exit code
process.exit(0);
```
