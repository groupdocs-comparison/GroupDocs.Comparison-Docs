---
id: product-overview
url: comparison/python-net/product-overview
title: GroupDocs.Comparison for Python via .NET Overview
linkTitle: Product overview
weight: 1
description: "GroupDocs.Comparison for Python via .NET compares 50+ document formats — DOCX, PDF, XLSX, PPTX, images, AutoCAD, source code — detecting text, style, and formatting changes at paragraph, word, and character level with accept/reject workflows, multi-source compare, and AI-pipeline-friendly change extraction."
keywords: comparison, compare, diff, document comparison, PDF, DOCX, XLSX, PPTX, image, AutoCAD, python, LLM, RAG, change detection, accept reject
productName: GroupDocs.Comparison for Python via .NET
toc: true
aliases:
    - /comparison/python-net/groupdocs-comparison-overview/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison Tool
    description: Compare PDF, Word, Excel, PowerPoint, AutoCAD, image, and source code files. Accept or reject changes, extract document information, and generate comparison reports.
    productCode: comparison
    productPlatform: python-net
---

## What is GroupDocs.Comparison?

GroupDocs.Comparison for Python via .NET is a native Python library that compares **50+ document formats** — DOCX, PDF, XLSX, PPTX, OpenDocument, AutoCAD, Visio, images, HTML, and source code — and reports the differences at paragraph, word, and character level, including style and formatting changes. It runs entirely on-premise, requires no Microsoft Office installation, and ships as a pre-built wheel on Windows, Linux, and macOS.

Typical uses include:

- **Contract and policy review** — surface inserted, deleted, and modified clauses between two DOCX or PDF revisions and route only the changed regions to reviewers (or to an LLM) instead of re-reading both documents.
- **Editorial accept/reject workflows** — classify each detected change, then re-emit the document honouring the decisions via `apply_changes`.
- **AI-edit audit** — compare the document an agent produced against the original to verify and explain every change it made. See [Agents and LLM Integration]({{< ref "comparison/python-net/agents-and-llm-integration" >}}) for the full pipeline.
- **Version-control review** — diff two exports of a non-text-friendly format (PPTX, XLSX, Visio, DWG) without flattening the binary.
- **Multi-source consolidation** — diff one source against many targets in a single pass to spot which downstream copy drifted from the canonical version.

## Key Capabilities

| Capability | Description |
|---|---|
| **50+ comparison formats** | DOCX, PDF, XLSX, PPTX, ODT, HTML, images, AutoCAD, Visio, source code, and more. See [supported formats]({{< ref "comparison/python-net/getting-started/supported-document-formats" >}}). |
| **Granular change detection** | [Paragraph, word, and character-level diffs]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-documents" >}}) — including style, formatting, and structural changes. |
| **Inspect detected changes** | [Iterate `ChangeInfo` objects]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-list-of-changes" >}}) — type (INSERTED / DELETED / STYLE_CHANGED), text, author, and style deltas — without writing an output file. |
| **Accept / reject workflows** | [Per-change ACCEPT / REJECT decisions]({{< ref "comparison/python-net/developer-guide/comparing-documents/accept-or-reject-detected-changes" >}}) re-emitted via `apply_changes`. |
| **Multi-source comparison** | [Diff one source against multiple targets]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-multiple-documents" >}}) in a single `Comparer`. |
| **Folder comparison** | [Compare entire directories]({{< ref "comparison/python-net/developer-guide/compare-folders" >}}) with the folder-compare mode. |
| **Change coordinates** | [Get the `Rectangle` (x / y / width / height) of every detected change]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-changes-coordinates" >}}) for overlay rendering. |
| **Custom change styling** | [Style inserted / deleted / changed regions]({{< ref "comparison/python-net/developer-guide/comparing-documents/customize-changes-styles" >}}) with `Color`, RGB tuples, hex strings, or named colours. |
| **Summary pages** | [Append a summary]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-only-summary-page" >}}) with change statistics, or emit a summary-only result. |
| **Password-protected documents** | [Open and re-save protected DOCX / PDF / XLSX]({{< ref "comparison/python-net/developer-guide/loading-documents/load-password-protected-documents" >}}) via `LoadOptions.password` and `SaveOptions.password`. |
| **Streams** | Load input from file-like objects (`open(..., "rb")` or `io.BytesIO`) — handy for cloud blobs and HTTP bodies. |
| **Document inspection** | [Read format, page count, and size]({{< ref "comparison/python-net/developer-guide/getting-document-info" >}}) without running a comparison. |
| **Logging and diagnostics** | [Wire `ConsoleLogger`]({{< ref "comparison/python-net/developer-guide/logging-and-diagnostics" >}}) through `ComparerSettings` for production traces. |
| **On-premise** | No cloud calls, no Microsoft Office install, no network traffic. |

## Quick Example

{{< tabs "quick-example">}}
{{< tab "compare_documents.py" >}}
```python
from groupdocs.comparison import Comparer

def compare_documents():
    """Compare two DOCX revisions and write a tracked-changes result."""
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        comparer.compare("./result.docx")

if __name__ == "__main__":
    compare_documents()
```
{{< /tab >}}
{{< tab "With options" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions, LoadOptions

def compare_with_options():
    """Compare two password-protected DOCX files with style detection
    and a summary page appended to the result."""
    load = LoadOptions()
    load.password = "1234"

    with Comparer("./protected_source.docx", load_options=load) as comparer:
        comparer.add("./protected_target.docx", load_options=load)
        options = CompareOptions()
        options.detect_style_changes = True
        options.generate_summary_page = True
        options.sensitivity_of_comparison = 75
        comparer.compare("./result.docx", options)

if __name__ == "__main__":
    compare_with_options()
```
{{< /tab >}}
{{< tab "result.docx" >}}
{{< tab-text >}}
`result.docx` is the comparison output produced by the `compare_documents.py` snippet. [Download the sample result](/comparison/python-net/_output_files/developer-guide/comparing-documents/compare-documents/compare_documents/result.docx).
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Where to next

1. **Install the package** — [Installation]({{< ref "comparison/python-net/getting-started/installation" >}}) walks through PyPI installation for Windows, Linux, and macOS.
2. **Run your first comparison** — [Quick Start Guide]({{< ref "comparison/python-net/getting-started/quick-start-guide" >}}) compares two DOCX files in five minutes.
3. **Explore the examples** — [Running Examples]({{< ref "comparison/python-net/getting-started/how-to-run-examples" >}}) clones the runnable repository and runs every documented scenario locally.
4. **Use it in depth** — the [Developer Guide]({{< ref "comparison/python-net/developer-guide" >}}) covers loading, comparing, accepting/rejecting changes, multi-source, folder compare, summary pages, and logging.
5. **Plug it into AI pipelines** — [Agents and LLM Integration]({{< ref "comparison/python-net/agents-and-llm-integration" >}}) explains the MCP server, `AGENTS.md`, and how to use Comparison as the change-detection step in agent workflows.
