---
id: quick-start-guide
url: comparison/python-net/getting-started/quick-start-guide
title: Quick Start Guide
linkTitle: Quick start guide
weight: 1
description: "Install GroupDocs.Comparison for Python via .NET, compare your first two documents, and inspect the detected changes — end to end in under five minutes."
keywords: quick start, hello world, first comparison, getting started Python, GroupDocs.Comparison tutorial
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/hello-world/
structuredData:
  showOrganization: true
---

This guide walks you through installing GroupDocs.Comparison for Python via .NET and comparing two documents end to end. By the end you will have a working environment, an output file showing the differences between two sample documents, and the code skeleton to extend for your own use cases.

## Prerequisites

- **Python 3.5 or newer** — verify with `python --version`.
- A package manager — pip is bundled with Python.
- Two sample documents to compare. You can [download `source.docx`](/comparison/python-net/_sample_files/getting-started/quick-start-guide/source.docx) and [`target.docx`](/comparison/python-net/_sample_files/getting-started/quick-start-guide/target.docx) used in this guide, or use your own.

On Linux and macOS, GroupDocs.Comparison also requires `libgdiplus` and font support — see the [installation guide]({{< ref "comparison/python-net/getting-started/installation" >}}) for the exact commands.

## Step 1 — Install the package

Install GroupDocs.Comparison from PyPI:

```bash
pip install groupdocs-comparison-net
```

The wheel is roughly 150 MB and bundles the .NET runtime; no further setup is required on Windows.

## Step 2 — Compare two documents

Save the following snippet as `quick_start.py` in the same folder as `source.docx` and `target.docx`, then run it with `python quick_start.py`.

{{< tabs "quick-start">}}
{{< tab "quick_start.py" >}}
```python
from groupdocs.comparison import Comparer

def quick_start():
    # Initialize Comparer with the source document and add the target.
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        # The result file contains the merged comparison highlighting added,
        # deleted, modified, and style changes.
        comparer.compare("./result.docx")

if __name__ == "__main__":
    quick_start()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/getting-started/quick-start-guide/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/getting-started/quick-start-guide/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/getting-started/quick-start-guide/quick_start/result.docx)
{{< /tab >}}
{{< /tabs >}}

Open `result.docx` to see the differences highlighted in colour: insertions in blue, deletions in red, style changes in green.

## Step 3 — Inspect detected changes programmatically

Beyond writing a merged result file, you can iterate over the individual changes:

{{< tabs "quick-start-changes">}}
{{< tab "list_changes.py" >}}
```python
from groupdocs.comparison import Comparer

def list_changes():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        comparer.compare()
        for change in comparer.get_changes():
            print(f"Type: {change.type}, Text: {change.text}")

if __name__ == "__main__":
    list_changes()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/getting-started/quick-start-guide/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/getting-started/quick-start-guide/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "list-changes.txt" >}}  
```text
Type: 2, Text: Cool
Type: 2, Text:  
Type: 3, Text: test 
Type: 2, Text:  signatures
Type: 2, Text: Our 
Type: 2, Text: char[
Type: 2, Text: 255]
Type: 2, Text:  
Type: 3, Text:
```
[Download full output](/comparison/python-net/_output_files/getting-started/quick-start-guide/list_changes/list-changes.txt)
{{< /tab >}}
{{< /tabs >}}

## Evaluation vs licensed mode

Without a license, GroupDocs.Comparison processes only the first two pages of any document and stamps trial badges on the output. To unlock the full feature set, apply a license — either via the `GROUPDOCS_LIC_PATH` environment variable (zero-code) or by calling `License().set_license(path)`. Request a free 30-day temporary license at [purchase.groupdocs.com/temporary-license](https://purchase.groupdocs.com/temporary-license).

See [Licensing and subscription]({{< ref "comparison/python-net/getting-started/licensing-and-subscription" >}}) for the full set of options, including metered licensing and stream-based license loading.

## Next steps

- [Compare documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-documents" >}}) — the full API surface for two-document comparison.
- [Accept or reject detected changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/accept-or-reject-detected-changes" >}}) — reviewer-style workflows that pick and choose which changes to apply.
- [Customize changes styles]({{< ref "comparison/python-net/developer-guide/comparing-documents/customize-changes-styles" >}}) — change highlight colours, fonts, and decorations.
- [Load documents]({{< ref "comparison/python-net/developer-guide/loading-documents" >}}) — paths, streams, password-protected files, custom fonts.
- [Save comparison results]({{< ref "comparison/python-net/developer-guide/saving-results" >}}) — output format, metadata, output password.
- [AI agents and LLM integration]({{< ref "comparison/python-net/agents-and-llm-integration" >}}) — work with the API from Claude Code, Cursor, and other AI assistants.
