---
id: system-requirements
url: comparison/python-net/getting-started/system-requirements
title: System Requirements
linkTitle: System requirements
weight: 3
description: "System requirements for GroupDocs.Comparison for Python via .NET — Windows, Linux, and macOS x64/arm64; CPython 3.5–3.14; bundled .NET runtime; minimal native dependencies."
keywords: system requirements, supported operating systems, Python version, GroupDocs.Comparison
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/system-requirements/
structuredData:
  showOrganization: true
---

GroupDocs.Comparison for Python via .NET is a self-contained Python wheel; it does not require a separate .NET installation. The .NET runtime is bundled.

## Supported operating systems

GroupDocs.Comparison runs on 64-bit Windows, Linux, and macOS. Per-platform wheels are published.

### Windows

- Windows 10 (x64)
- Windows 11 (x64)
- Windows Server 2016, 2019, 2022, 2025

### Linux

- Ubuntu 20.04+, Debian 11+, Fedora 36+, CentOS Stream 9+ — any glibc-based distribution that meets the manylinux baseline.
- Native dependencies: `libgdiplus`, `libfontconfig1`, `libicu-dev`, `ttf-mscorefonts-installer` — see [Installation]({{< ref "comparison/python-net/getting-started/installation" >}}).

### macOS

- macOS 12 Monterey or later, on Intel x64 or Apple Silicon (arm64).
- Native dependencies: `mono-libgdiplus` via Homebrew.

## Supported Python versions

GroupDocs.Comparison for Python via .NET supports CPython 3.5 through 3.14. The package is published as platform-specific wheels for each supported Python version.

```bash
python --version    # Should print 3.5.x or higher
```

## Hardware requirements

- **CPU:** any 64-bit x86 (x64) or ARM (arm64) processor.
- **RAM:** at least 1 GB free. Large documents and high-DPI conversions benefit from more.
- **Disk:** the wheel itself is ~150 MB. Allow ample temporary space for the documents being compared.

## Development environments

Any Python IDE or text editor works — VS Code, PyCharm, Cursor, Sublime Text, vim, etc. AI assistants such as Claude Code, Cursor, and GitHub Copilot have first-class support via the bundled `AGENTS.md` and the [MCP server]({{< ref "comparison/python-net/agents-and-llm-integration" >}}).
