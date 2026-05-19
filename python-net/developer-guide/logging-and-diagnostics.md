---
id: logging-and-diagnostics
url: comparison/python-net/developer-guide/logging-and-diagnostics
title: Logging and Diagnostics
linkTitle: Logging & diagnostics
weight: 9
description: "Capture diagnostic messages from GroupDocs.Comparison for Python via .NET — to the console or a custom logger — and choose the right verbosity level for production."
keywords: logging, ConsoleLogger, diagnostics, log_path, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
structuredData:
  showOrganization: true
---

GroupDocs.Comparison for Python via .NET exposes a small logging API through the `groupdocs.comparison.logging` namespace. Use it to surface diagnostic messages during development, capture logs in production, or wire the library's output into your application's existing logging pipeline.

## Console logger

The simplest option is to attach a `ConsoleLogger` via [`ComparerSettings`](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison/comparersettings) when constructing a `Comparer`. Comparison-time messages are written to standard output:

{{< tabs "logging-console">}}
{{< tab "logging_console.py" >}}
```python
from groupdocs.comparison import Comparer, ComparerSettings
from groupdocs.comparison.logging import ConsoleLogger

def logging_console():
    settings = ComparerSettings()
    settings.logger = ConsoleLogger()

    with Comparer("./source.docx", settings=settings) as comparer:
        comparer.add("./target.docx")
        comparer.compare("./result.docx")

if __name__ == "__main__":
    logging_console()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/logging-and-diagnostics/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/logging-and-diagnostics/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/logging-and-diagnostics/logging_console/result.docx)
{{< /tab >}}
{{< /tabs >}}

Run the script and you will see GroupDocs.Comparison's progress messages, warnings, and errors printed to the console.

## What `ILogger` exposes

`ConsoleLogger` implements the `ILogger` interface. The interface exposes three method families:

| Method | When it fires |
|---|---|
| `trace(message)` | Verbose progress messages (page-by-page, change-by-change) |
| `warning(message)` | Recoverable issues (missing fonts substituted, format quirks) |
| `error(message)` | Failures that aborted part of the operation |

Each method has `_file(path, message)` and `_string(text, message)` overloads — the first arg identifies which document caused the log line.

{{< alert style="info" >}}
Custom Python subclasses of `ILogger` are not yet auto-wrapped by the wheel as of `26.4.0.postN` — passing a custom logger raises `TypeError: cannot wrap … as ILogger`. Use `ConsoleLogger` and redirect stdout/stderr at the OS level for file capture; a future wheel release will add the callback-adapter wiring for `ILogger` subclasses.
{{< /alert >}}

## Writing logs to a file

For now, capture `ConsoleLogger` output to disk by redirecting the process's stdout / stderr at the OS level:

```bash
python my_comparison.py >> groupdocs-comparison.log 2>&1
```

Rotate the log file with your usual operating-system tooling (`logrotate` on Linux, scheduled archival on Windows). On Windows PowerShell:

```powershell
python my_comparison.py *>> groupdocs-comparison.log
```

## Troubleshooting

If a comparison behaves unexpectedly, enable logging first and re-run the example. The logger will surface load-time warnings (missing fonts, unsupported features in a specific format, malformed XML) that the call-site otherwise swallows.

When opening a support ticket on the [forum](https://forum.groupdocs.com/c/comparison/), include the captured log file alongside the source/target documents and a minimal reproducer — the development team can triage faster with the full diagnostic context.
