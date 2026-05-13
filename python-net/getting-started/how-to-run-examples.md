---
id: how-to-run-examples
url: comparison/python-net/getting-started/how-to-run-examples
title: How to Run Examples
linkTitle: How to run examples
weight: 6
description: "Clone the GroupDocs.Comparison for Python via .NET examples repository, install dependencies, and run the bundled examples that accompany this documentation."
keywords: run examples, GroupDocs.Comparison examples, GitHub repository, examples runner
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/how-to-run-examples/
structuredData:
  showOrganization: true
---

The Python examples for GroupDocs.Comparison are hosted on GitHub at [GroupDocs.Comparison-for-Python-via-.NET](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Python-via-.NET). Every code snippet on this site has a corresponding runnable script in that repository.

## Run examples from the GitHub repository

Make sure [Python 3.5 or newer](https://python.org/) is installed.

1. Clone the examples repository:

   ```bash
   git clone https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Python-via-.NET.git
   ```

2. Navigate to the project folder:

   ```bash
   cd GroupDocs.Comparison-for-Python-via-.NET
   ```

3. Install the required Python packages:

   ```bash
   pip install -r Examples/requirements.txt
   ```

4. Run all examples in one pass:

   ```bash
   python Examples/run_all_examples.py
   ```

   `run_all_examples.py` discovers every example script in the `Examples/` tree, executes each one in its own directory, and reports pass/fail counts. It exits with a non-zero status if any example fails.

5. To run a single example, change to its directory and execute it directly:

   ```bash
   cd Examples/developer-guide/comparing-documents/compare-documents
   python compare_documents.py
   ```

## Apply a license before running

By default, examples run in evaluation mode (two-page cap + trial badges). To run them with a license:

```bash
export GROUPDOCS_LIC_PATH=/path/to/GroupDocs.Comparison.Python.lic
python Examples/run_all_examples.py
```

`run_all_examples.py` picks up the `GROUPDOCS_LIC_PATH` environment variable and applies the license before running any example.

## Run in Docker

The repository ships a `Dockerfile` that builds an image with the .NET runtime, native dependencies, and a recent Python pre-installed. To build and run the full example suite in a container:

```bash
docker build -t groupdocs-comparison-examples .
docker run --rm \
    -v /path/to/license:/lic:ro \
    -e GROUPDOCS_LIC_PATH=/lic/GroupDocs.Comparison.Python.lic \
    groupdocs-comparison-examples
```

On Windows with Git Bash, run `export MSYS_NO_PATHCONV=1` before `docker run` to prevent MSYS from mangling the `GROUPDOCS_LIC_PATH` value.

## Contribute

If you would like to add or improve an example, the repository is open source. Fork it, edit the code, and submit a pull request — the GroupDocs team will review the change and merge it if it fits the documentation.
