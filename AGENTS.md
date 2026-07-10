# AGENTS.md — GroupDocs.Comparison Documentation

## What is this repo

This repository holds the Markdown/Hugo **source files** for the official GroupDocs.Comparison documentation published at https://docs.groupdocs.com/comparison/. It is not a code SDK — it is the documentation content, organized per platform.

GroupDocs.Comparison is a document comparison API that programmatically compares 50+ document formats (Word, PDF, Excel, PowerPoint and more), detects changes, and produces a result document with highlighted differences. It is available for **.NET, Java, Node.js (via Java), and Python (via .NET)**.

This repo is MIT-licensed (it contains documentation source only). It is built with Hugo; the shared theme/layout lives in the `common/` git submodule.

## Editing docs (for contributors and agents)

- Each platform has its own top-level folder: `net/`, `java/`, `nodejs-java/`, `python-net/`. Edit the file under the matching platform; there is usually a parallel page in each.
- Pages are Markdown with Hugo front matter (`---` block) and Hugo shortcodes: `{{< tabs >}}` / `{{< tab >}}` for tabbed code, `{{< ref "..." >}}` for internal links, `{{< alert >}}` for callouts. Keep these intact.
- Internal links use `{{< ref "comparison/<platform>/..." >}}` — do not hardcode absolute `https://docs.groupdocs.com` URLs for internal pages.
- Do **not** edit anything under `common/` (it is a submodule pulled from another repo).
- Build locally with `build_docs.cmd` (Windows) or `build_docs.sh` (Unix).

## Install (per platform)

The commands below come from each platform's `getting-started/installation.md`.

**.NET** (NuGet):
```powershell
Install-Package GroupDocs.Comparison
```
```bash
dotnet add package GroupDocs.Comparison
```

**Java** (Maven, from the GroupDocs repository): add the GroupDocs Maven repository and the `com.groupdocs:groupdocs-comparison` dependency to your `pom.xml`. See `java/getting-started/installation.md` for the current repository URL and version.

**Node.js via Java** (npm):
```bash
npm install @groupdocs/groupdocs.comparison
```

**Python via .NET** (PyPI):
```bash
pip install groupdocs-comparison-net
```

## Minimal working example (per platform)

All examples follow the same three steps: construct a `Comparer` with the source, `Add` the target, `Compare` to an output path. Snippets are taken from the `compare-documents` / `quick-start-guide` pages in this repo.

**.NET** (`net/comparison-basic/compare-documents.md`):
```csharp
using GroupDocs.Comparison;

using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");
    comparer.Compare("result.docx");
}
```

**Node.js via Java** (`nodejs-java/comparison-basic/compare-documents.md`):
```javascript
const groupdocs = require('@groupdocs/groupdocs.comparison');

const comparer = new groupdocs.Comparer('source.docx');
comparer.add('target.docx');
comparer.compare('result.docx');
process.exit(0);
```

**Python via .NET** (`python-net/getting-started/quick-start-guide.md`):
```python
from groupdocs.comparison import Comparer

with Comparer("source.docx") as comparer:
    comparer.add("target.docx")
    comparer.compare("result.docx")
```

## License setup

Without a license the API runs with [trial limitations](https://docs.groupdocs.com/comparison/net/licensing-and-evaluation-limitations/) (evaluation watermark and a page/document count cap). Set a license before comparing. Two common approaches (see each platform's licensing page):

- Set the `GROUPDOCS_LIC_PATH` environment variable to the `.lic` file (zero-code), or
- Call `License().set_license(path)` / `new License().SetLicense(path)` from code.

Get a free 30-day temporary license: https://purchase.groupdocs.com/temporary-license/

## Common pitfalls (platform-specific)

- **.NET:** on .NET Core / .NET 5+ ensure package dependencies are installed; for non-Windows launch see `net/getting-started/non-windows-launch.md`.
- **Java:** requires Java run-time 8+ (Kotlin supported); dependencies are pulled from the GroupDocs Maven repository, not Maven Central.
- **Node.js via Java:** requires a **JRE/JDK (8+, 17 LTS recommended)** with `JAVA_HOME` set — the package bridges to Java. Node.js 20 LTS or later.
- **Python via .NET:** the package is named **`groupdocs-comparison-net`** and imports as `from groupdocs.comparison import Comparer`; it bundles the .NET runtime (no separate .NET install on Windows). On Linux/macOS install native deps (`libgdiplus`, fonts) — see `python-net/getting-started/installation.md`.

## Do NOT confuse

- **This repo = documentation source** for the on-premise GroupDocs.Comparison SDK across all four platforms.
- The **SDK code and examples** live in separate repositories, e.g. https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET (.NET), and the Java/Node.js/Python equivalents.
- **GroupDocs.Comparison Cloud** is a separate REST API product with different SDK packages — not documented here.
- **MCP server** for document comparison is a separate project: https://github.com/groupdocs-comparison/GroupDocs.Comparison.Mcp. (Note: `https://docs.groupdocs.com/mcp` is a separate documentation-query MCP server referenced in `python-net/agents-and-llm-integration.md`.)

## Links

- Documentation: https://docs.groupdocs.com/comparison/net/
- API reference: https://reference.groupdocs.com/comparison/net/
- Supported formats: https://docs.groupdocs.com/comparison/net/supported-document-formats/
- Releases: https://releases.groupdocs.com/comparison/net/
- How-to articles (blog): https://blog.groupdocs.com/categories/groupdocs.comparison-product-family/
- NuGet package (.NET): https://www.nuget.org/packages/GroupDocs.Comparison
- PyPI package (Python): https://pypi.org/project/groupdocs-comparison-net/
- npm package (Node.js): https://www.npmjs.com/package/@groupdocs/groupdocs.comparison
- Free support forum: https://forum.groupdocs.com/c/comparison/12
- Temporary license: https://purchase.groupdocs.com/temporary-license/

(For other platforms, replace the `net/` URL segment with `java/`, `nodejs-java/`, or `python-net/`.)

## Repo map

- `net/` — documentation for GroupDocs.Comparison for .NET (`getting-started/`, `comparison-basic/`, `advanced-usage/`, `use-cases/`, `migration-notes.md`, …).
- `java/` — documentation for GroupDocs.Comparison for Java.
- `nodejs-java/` — documentation for GroupDocs.Comparison for Node.js via Java.
- `python-net/` — documentation for GroupDocs.Comparison for Python via .NET (includes `agents-and-llm-integration.md`, a developer guide, and sample/output files).
- `common/` — **git submodule** with the shared Hugo theme, layouts, and config (`config.toml`). Do not edit.
- `_index.md` — the product-family landing page.
- `build_docs.cmd` / `build_docs.sh` — local build scripts.
- `.github/` — CI workflows.
