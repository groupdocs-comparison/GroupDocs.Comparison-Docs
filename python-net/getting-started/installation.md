---
id: installation
url: comparison/python-net/installation
title: Install GroupDocs.Comparison for Python via .NET 
weight: 4
description: ""
keywords:
productName: GroupDocs.Comparison for Python via .NET
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Documents Comparison Tool
    description: The product allows to compare Pdf, Word, Excel, PowerPoint, AutoCad, Image, Code and much more file formats. Comparison API also supports accepting or rejecting changes, extracting document information and generating comparison report
    productCode: comparison
    productPlatform: python-net
  howTo:
    name: How to install Comparison API
    description: Learn how to install GroupDocs.Comparison into Python
    steps:
      - name: Specify GroupDocs Repository
        text: Add GroupDocs Maven repository to the project
      - name: Define Comparison dependency
        text: Add comparison dependency so that the project will download required libraries
---

### Install using PYPI

All Python packages are hosted at [PYPI](https://pypi.org/project/groupdocs-comparison-net/). You can easily reference GroupDocs.Comparison for Python via .NET API directly in your Python project by installing it with the following command.

```shell
pip install groupdocs-comparison-net
```

## Download Package from Official Website

To download the GroupDocs.comparison package for your operating system, please visit the official [GroupDocs Releases website](https://releases.groupdocs.com/comparison/python-net/). Currently, four OS-specific packages are available:

- **Windows 64-bit:** Package name ends with `amd64.whl`
- **Linux 64-bit:** Package name ends with `arm64.whl`
- **macOS Intel Silicon:** Package name ends with `x86_64.whl`

Choose the appropriate package based on your system's architecture.

### Copy Downloaded File

Copy the downloaded file into your project folder.

### Install Package Using Pip

To install package run the command specific to your your operation system. 

{{< tabs "example2">}}
{{< tab "Windows (64-bit)" >}}
```ps
py -m pip install groupdocs_comparison_net-25.6-py3-none-win_amd64.whl
```
{{< /tab >}}
{{< tab "Linux 64-bit" >}}
```ps
py -m pip install groupdocs_comparison_net-25.6-py3-none-macosx_10_14_x86_64.whl
```
{{< /tab >}}
{{< tab "macOS (Intel Silicon)" >}}
```ps
python3 -m pip install groupdocs_comparison_net-25.6-py3-none-manylinux1_x86_64.whl
```
{{< /tab >}}
{{< /tabs >}}

Expected output:

```bash
Processing groupdocs_comparison_net-25.6-py3-none-*.whl
Installing collected packages: groupdocs-comparison-net
Successfully installed groupdocs-comparison-net-25.6
```