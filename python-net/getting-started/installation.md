---
id: installation
url: comparison/python-net/getting-started/installation
title: Install GroupDocs.Comparison for Python via .NET
linkTitle: Installation
weight: 4
description: "Install GroupDocs.Comparison for Python via .NET from PyPI or a downloaded wheel, including the native dependencies required on Linux and macOS."
keywords: installation, pip install, groupdocs-comparison-net, wheel, libgdiplus, native dependencies
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/installation/
structuredData:
  showOrganization: true
---

GroupDocs.Comparison for Python via .NET ships as a self-contained Python wheel on [PyPI](https://pypi.org/project/groupdocs-comparison-net/). The wheel bundles the .NET runtime, so no separate .NET installation is required on Windows. On Linux and macOS, a small set of native dependencies is needed for graphics and font rendering.

## Install from PyPI

The recommended way to install GroupDocs.Comparison is via pip:

```bash
pip install groupdocs-comparison-net
```

To install a specific version:

```bash
pip install groupdocs-comparison-net==26.4.0
```

Verify the installation:

```bash
pip show groupdocs-comparison-net
```

## Install from a downloaded wheel

If you cannot install from PyPI (for example, in an offline environment), download the wheel for your platform from the [GroupDocs releases page](https://releases.groupdocs.com/comparison/python-net/) and install it locally.

Wheels are published for four target platforms:

| Platform | Wheel filename suffix |
|---|---|
| Windows x64 | `-win_amd64.whl` |
| Linux x64 | `-manylinux*_x86_64.whl` |
| macOS Intel | `-macosx_*_x86_64.whl` |
| macOS Apple Silicon | `-macosx_*_arm64.whl` |

After downloading, install with pip:

```bash
pip install ./groupdocs_comparison_net-26.4.0-py3-none-win_amd64.whl
```

Expected output:

```text
Processing ./groupdocs_comparison_net-26.4.0-py3-none-win_amd64.whl
Installing collected packages: groupdocs-comparison-net
Successfully installed groupdocs-comparison-net-26.4.0
```

## Native dependencies (Linux and macOS)

On Windows the wheel is self-contained. On Linux and macOS, install the following before running any examples:

### Ubuntu / Debian

```bash
sudo apt update
sudo apt install -y libgdiplus libfontconfig1 libicu-dev ttf-mscorefonts-installer fontconfig
sudo fc-cache -f
```

`ttf-mscorefonts-installer` accepts the EULA interactively; in CI pipelines, accept it non-interactively with `echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | sudo debconf-set-selections` before the install.

### macOS

```bash
brew install mono-libgdiplus
```

If GroupDocs.Comparison fails with `DllNotFoundException: libSkiaSharp` on macOS, the system has a stale copy that conflicts with the bundled version. Rename it so the bundled library takes precedence:

```bash
sudo mv /usr/local/lib/libSkiaSharp.dylib /usr/local/lib/libSkiaSharp.dylib.bak
```

## Verify the installation

After installing, confirm that the package imports cleanly:

```bash
python -c "from groupdocs.comparison import Comparer; print('OK')"
```

If this prints `OK`, you are ready to compare your first document — head to the [Quick start guide]({{< ref "comparison/python-net/getting-started/quick-start-guide" >}}).
