---
id: home
url: comparison/python-net
title: GroupDocs.Comparison for Python via .NET
linkTitle: GroupDocs.Comparison for Python
weight: 1
description: "GroupDocs.Comparison for Python via .NET developer documentation. Learn how to diff DOCX, PPTX, XLSX, and PDF files using the Python API."
keywords: compare, diff, compare files, python api, pdf, docx, pptx, xlsx, comparison
productName: GroupDocs.Comparison for Python via .NET
hideChildren: True
fullWidth: True
AddLibInfoScript: True
toc: True
structuredData:
    showOrganization: true
---

<img src="/comparison/python-net/images/home.png" alt="groupdocs comparison python logo" align="left" style="width:110px; margin: 0 30px 0 0"/>

<a href="https://pypi.org/project/groupdocs-comparison-net/">
	<img src="https://img.shields.io/pypi/v/groupdocs-comparison-net?label=GroupDocs.Comparison%20for%20Python%20PyPI&cacheSeconds=3600" alt="PyPI package">
</a>
<a href="https://pypi.org/project/groupdocs-comparison-net/#files">
	<img src="https://img.shields.io/pypi/dm/groupdocs-comparison-net?label=GroupDocs.Comparison%20Downloads&cacheSeconds=3600" alt="PyPI downloads">
</a>

{{< button style="primary" link="https://releases.groupdocs.com/comparison/python-net/release-notes/" >}} <svg class="gdoc-icon gdoc-product-doc__btn-icon"><use xlink:href="/img/groupdocs-stack.svg#document"></use></svg> Release notes {{< /button >}}
{{< button style="primary" link="https://pypi.org/project/groupdocs-comparison-net/" >}} {{< icon "gdoc_download" >}} Download from PyPI {{< /button >}}
{{< button style="primary" link="https://products.groupdocs.app/comparison/total" >}} <svg class="gdoc-icon gdoc-product-doc__btn-icon"><use xlink:href="/img/groupdocs-stack.svg#app"></use></svg> Online app {{< /button >}}

**GroupDocs.Comparison for Python via .NET** is a Python version of the GroupDocs.Comparison API. It detects differences between source and target files at paragraph, word, and character levels — including style and formatting changes. The API supports 50+ document types including Microsoft Office, OpenOffice, AutoCAD, Visio, images, source code, PDFs, and more.

<div style="clear:left"></div>

## Quick example

```python
from groupdocs.comparison import Comparer

# Compare two DOCX revisions and write a tracked-changes result
with Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    comparer.compare("result.docx")
```

## Key features

- **Wide format support**: 50+ document types including DOCX, PDF, XLSX, PPTX, ODT, HTML, images, CAD, and source code.
- **Granular change detection**: paragraph, word, and character-level diffs, including style and formatting changes.
- **Accept / reject workflows**: review individual detected changes and re-emit the document honouring per-change decisions.
- **Multi-source comparison**: diff one source against multiple targets in a single pass, or compare entire folders.

## Supported document formats

GroupDocs.Comparison supports a wide range of file formats. For a complete list, see the [full list of supported formats]({{< ref "comparison/python-net/getting-started/supported-document-formats" >}}).

- **Microsoft Office** (Word, Excel, PowerPoint, Visio)
- **PDF** (Standard PDFs)
- **OpenDocument** (ODT, ODS, ODP)
- **Images** (JPEG, PNG, BMP, TIFF)
- **Text/Markdown** (TXT, MD)
- **HTML/Web** (HTML, MHTML)
- **AutoCAD** (DWG, DXF)
- **Source code** (CS, JAVA, JS, PY, and more)

---

{{< columns >}}

<p><b>About GroupDocs.Comparison</b></p>
<hr><p>OVERVIEW</p></hr>
<ul>
	<li><a href='{{< ref "comparison/python-net/product-overview" >}}'>Product overview</a></li>
	<li><a href='{{< ref "comparison/python-net/getting-started/features-overview" >}}'>Features overview</a></li>
	<li><a href='{{< ref "comparison/python-net/getting-started/supported-document-formats" >}}'>Supported document formats</a></li>
	<li><a href='{{< ref "comparison/python-net/getting-started/system-requirements" >}}'>System requirements</a></li>
	<li><a href='{{< ref "comparison/python-net/getting-started/installation" >}}'>Installation</a></li>
	<li><a href='{{< ref "comparison/python-net/getting-started/licensing-and-subscription" >}}'>Licensing and subscription</a></li>
</ul>
<p>TECHNICAL SUPPORT</p>
<ul>
	<li><a href="https://forum.groupdocs.com/c/comparison/">GroupDocs Free Support Forum</a></li>
	<li><a href="https://helpdesk.groupdocs.com/">GroupDocs Paid Support Helpdesk</a></li>
</ul>
<--->
<p><b>Get Started</b></p>
<hr><p>GUIDE</p></hr>
<ul>
	<li><a href='{{< ref "comparison/python-net/getting-started/quick-start-guide" >}}'>Quick start guide</a></li>
	<li><a href='{{< ref "comparison/python-net/getting-started/how-to-run-examples" >}}'>Run GroupDocs.Comparison examples</a></li>
	<li><a href='{{< ref "comparison/python-net/agents-and-llm-integration" >}}'>AI agents and LLM integration</a></li>
</ul>
<p>USEFUL RESOURCES</p>
<ul>
	<li><a href="https://pypi.org/project/groupdocs-comparison-net/">GroupDocs.Comparison PyPI package</a></li>
	<li><a href="https://downloads.groupdocs.com/comparison/python-net">GroupDocs.Comparison for Python via .NET downloads</a></li>
	<li><a href="https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Python-via-.NET/">Examples and demos on GitHub</a></li>
</ul>
<--->
<p><b>Develop Functions</b></p>
<hr><p>GUIDE</p></hr>
<ul>
	<li><a href='{{< ref "comparison/python-net/developer-guide/comparing-documents/compare-documents" >}}'>Compare documents</a></li>
	<li><a href='{{< ref "comparison/python-net/developer-guide/getting-document-info" >}}'>Get document information</a></li>
	<li><a href='{{< ref "comparison/python-net/developer-guide/loading-documents" >}}'>Load documents</a></li>
	<li><a href='{{< ref "comparison/python-net/developer-guide/saving-results" >}}'>Save comparison results</a></li>
</ul>
<p>USEFUL RESOURCES</p>
<ul>
	<li><a href="https://reference.groupdocs.com/comparison/python-net">GroupDocs.Comparison for Python via .NET API reference</a></li>
	<li><a href='https://releases.groupdocs.com/comparison/python-net/release-notes/'>GroupDocs.Comparison for Python via .NET release notes</a></li>
</ul>
{{< /columns >}}
