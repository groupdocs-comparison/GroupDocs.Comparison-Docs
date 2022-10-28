---
id: migration-notes
url: comparison/java/migration-notes
title: Migration Notes
weight: 3
description: ""
keywords:
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
---

## Why To Migrate?

Here are the key reasons to use the new updated API provided by **[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** since version 20.4:

- **Comparer** class introduced as a **single entry point** to compare documents of any supported file format with various options and ability to accept/reject found differences in resultant document.
- Document **compare options** for all document types. Instead of using document related options now options are related to compare type only.
- The overall document related classes were unified to common.
- Product architecture was redesigned from scratch in order to simplify passing options and classes to manipulate comparison.
- Document information and preview generation procedures were simplified.

## How To Migrate? 

Here is a brief comparison of how to compare document with old and new API.

**Old coding style**

<script src="https://gist.github.com/groupdocs-comparison-gists/e2edd2208e2c0cec2a3807160d850c0e.js"></script>

**New coding style**

<script src="https://gist.github.com/groupdocs-comparison-gists/2d026c76b30856c2e86c0a27df28b236.js"></script>
