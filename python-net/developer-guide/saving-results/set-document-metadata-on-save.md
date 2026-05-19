---
id: set-document-metadata-on-save
url: comparison/python-net/developer-guide/saving-results/set-document-metadata-on-save
title: Set Document Metadata on Save
linkTitle: Set metadata on save
weight: 1
description: "Choose the metadata source (source document, target document, or custom file-author metadata) when saving the comparison result using GroupDocs.Comparison for Python via .NET."
keywords: save document metadata, clone_metadata_type, MetadataType, FileAuthorMetadata, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/set-document-metadata-on-save/
    - /comparison/python-net/advanced-usage/saving/set-document-metadata-on-save/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to set document metadata on save in Python
    description: Learn how to set document metadata on save in Python step by step
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with the source path or stream.
      - name: Add target
        text: Add the target via add().
      - name: Configure SaveOptions
        text: Set clone_metadata_type to MetadataType.SOURCE, .TARGET, or .FILE_AUTHOR.
      - name: Compare with SaveOptions
        text: Call compare() with the result path and SaveOptions.
---

The comparison result document can carry metadata (author, organization, creation date, etc.). Use [`SaveOptions.clone_metadata_type`](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison.options.save/saveoptions/) to choose where it comes from:

- `MetadataType.SOURCE` — clone metadata from the source document.
- `MetadataType.TARGET` — clone metadata from the target document.
- `MetadataType.FILE_AUTHOR` — set user-defined metadata via `SaveOptions.file_author_metadata`.

## Example 1: Use metadata from the source file

{{< tabs "metadata-source">}}
{{< tab "set_metadata_from_source.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import SaveOptions, MetadataType

def set_metadata_from_source():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        save_options = SaveOptions()
        save_options.clone_metadata_type = MetadataType.SOURCE
        comparer.compare("./result.docx", save_options)

if __name__ == "__main__":
    set_metadata_from_source()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/saving-results/set-document-metadata-on-save/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/saving-results/set-document-metadata-on-save/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/saving-results/set-document-metadata-on-save/set_metadata_from_source/result.docx)
{{< /tab >}}
{{< /tabs >}}

## Example 2: Use metadata from the target file

{{< tabs "metadata-target">}}
{{< tab "set_metadata_from_target.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import SaveOptions, MetadataType

def set_metadata_from_target():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        save_options = SaveOptions()
        save_options.clone_metadata_type = MetadataType.TARGET
        comparer.compare("./result.docx", save_options)

if __name__ == "__main__":
    set_metadata_from_target()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/saving-results/set-document-metadata-on-save/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/saving-results/set-document-metadata-on-save/set_metadata_from_target/result.docx)
{{< /tab >}}
{{< /tabs >}}

## Example 3: Set user-defined metadata

{{< tabs "metadata-user-defined">}}
{{< tab "set_user_defined_metadata.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import SaveOptions, MetadataType, FileAuthorMetadata

def set_user_defined_metadata():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")

        author_metadata = FileAuthorMetadata()
        author_metadata.author = "Tom"
        author_metadata.company = "GroupDocs"
        author_metadata.last_save_by = "Jack"

        save_options = SaveOptions()
        save_options.clone_metadata_type = MetadataType.FILE_AUTHOR
        save_options.file_author_metadata = author_metadata

        comparer.compare("./result.docx", save_options)

if __name__ == "__main__":
    set_user_defined_metadata()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/saving-results/set-document-metadata-on-save/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/saving-results/set-document-metadata-on-save/set_user_defined_metadata/result.docx)
{{< /tab >}}
{{< /tabs >}}
