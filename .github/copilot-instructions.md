# GitHub Copilot instructions — GroupDocs.Comparison Documentation

This repository holds the Markdown/Hugo **source files** for the official GroupDocs.Comparison documentation (https://docs.groupdocs.com/comparison/). It is documentation source, not SDK code.

GroupDocs.Comparison is a document comparison API that programmatically compares 50+ document formats (Word, PDF, Excel, PowerPoint and more), detects changes, and produces a result document with highlighted differences. Available for **.NET, Java, Node.js (via Java), and Python (via .NET)**.

## Editing docs

- Platforms live in top-level folders: `net/`, `java/`, `nodejs-java/`, `python-net/`. Edit the file under the matching platform.
- Pages are Markdown with Hugo front matter and shortcodes (`{{< tabs >}}`, `{{< tab >}}`, `{{< ref >}}`, `{{< alert >}}`) — keep them intact.
- Internal links use `{{< ref "comparison/<platform>/..." >}}`, not absolute URLs.
- Do **not** edit `common/` — it is a git submodule (shared Hugo theme).

## Install (per platform)

```powershell
# .NET
dotnet add package GroupDocs.Comparison
```
```bash
# Node.js via Java
npm install @groupdocs/groupdocs.comparison
# Python via .NET
pip install groupdocs-comparison-net
```
Java: add the GroupDocs Maven repository + `com.groupdocs:groupdocs-comparison` dependency (see `java/getting-started/installation.md`).

## Minimal working example

Same three steps everywhere: construct `Comparer(source)` → `Add(target)` → `Compare(output)`.

```csharp
// .NET
using GroupDocs.Comparison;
using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");
    comparer.Compare("result.docx");
}
```
```python
# Python via .NET
from groupdocs.comparison import Comparer
with Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    comparer.compare("result.docx")
```

Set a license (or `GROUPDOCS_LIC_PATH`) to remove trial limitations. Free temporary license: https://purchase.groupdocs.com/temporary-license/

## Common pitfalls

- **Node.js via Java** needs a JRE/JDK (8+, 17 LTS recommended) with `JAVA_HOME` set.
- **Python** package is named `groupdocs-comparison-net`, imports as `groupdocs.comparison`, and runs via a bundled .NET runtime; Linux/macOS need native deps (`libgdiplus`, fonts).
- **Java** dependencies come from the GroupDocs Maven repository, not Maven Central.
- **.NET** on non-Windows: see `net/getting-started/non-windows-launch.md`.

## Docs source, not SDK / Cloud / MCP

- This repo = **documentation source** for the on-premise SDK across four platforms.
- SDK code and examples live in separate repos (e.g. https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET).
- **GroupDocs.Comparison Cloud** is a separate REST API product — not documented here.
- **MCP server** for comparison is a separate project: https://github.com/groupdocs-comparison/GroupDocs.Comparison.Mcp

## Links

- Docs: https://docs.groupdocs.com/comparison/net/
- API reference: https://reference.groupdocs.com/comparison/net/
- Supported formats: https://docs.groupdocs.com/comparison/net/supported-document-formats/
- How-to articles (blog): https://blog.groupdocs.com/categories/groupdocs.comparison-product-family/
