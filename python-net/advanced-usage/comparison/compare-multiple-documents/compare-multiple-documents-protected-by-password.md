---
id: compare-multiple-documents-protected-by-password
url: comparison/python-net/compare-multiple-documents-protected-by-password
title: Compare multiple documents protected by password
weight: 1
description: "This article describes how to compare multiple Word documents or PowerPoint presentations protected by password using GroupDocs.Comparison for Python via .NET API."
keywords: Compare multiple password-protected documents, compare multiple protected documents
productName: GroupDocs.Comparison for Python via .NET
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python language and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: True
  howTo:
    name: How to Compare multiple documents in Python
    description: Learn how to compare multiple documents in Python step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of the Comparer class. The constructor accepts the source file path or source file stream as the first parameter and a LoadOption object as a second parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target files
        text: Add the path to the target files using the Add method. The second parameter is a LoadOption object that contains the password.
      - name: Compare documents
        text: Call the Compare method of your object and pass the resulting file path as the parameter.
---

{{< alert style="info" >}}This feature is available only for Word documents, PowerPoint, and Open Document presentations.{{< /alert >}}

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/python-net) allows you to compare more than two password-protected documents.

To compare several password-protected documents, follow these steps:

1.  Instantiate the `LoadOptions`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options.load/loadoptions)--> object. Specify the password for the source document.
2.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer)--> object. Specify the source document path or stream and the `LoadOptions`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options.load/loadoptions)--> object created in the previous step.
3.  Instantiate another `LoadOptions`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options.load/loadoptions)--> object and specify the password for the target document.
4.  Call the `add()`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer/#add-java.lang.String-com.groupdocs.comparison.options.load.LoadOptions-)--> method and specify the target document path or stream and the `LoadOptions`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options.load/loadoptions)--> object created in step 3. Repeat steps 3 and 4 for every target document.
5.  Call the `compare()`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer/#compare-java.lang.String-)--> method.

The following code snippets show how to compare several password-protected documents:

## Compare several password-protected documents from a local disk

```python
import groupdocs.comparison as gc

def compare_multiple_documents_protected_path(source_path, target_paths, source_password, target_passwords, output_file_name):
    # Initialize the comparer with the source file path and load options
    load_options_source = gc.options.LoadOptions()
    load_options_source.password = source_password
    comparer = gc.Comparer(source_path, load_options_source)

    # Add target files and load options
    for target_path, target_password in zip(target_paths, target_passwords):
        load_options_target = gc.options.LoadOptions()
        load_options_target.password = target_password
        comparer.add(target_path, load_options_target)

    # Perform the compare operation and save the result
    comparer.compare(output_file_name)

    print(f"\nDocuments compared successfully.\nCheck output in {output_file_name}.")
    
```

## Compare several password-protected documents from a stream

```python
import groupdocs.comparison as gc

def compare_multiple_documents_protected_path(source_path, target_paths, source_password, target_passwords, output_file_name):
    # Initialize the comparer with the source stream and load options
    with open(source_path, 'rb') as source_stream:
        load_options_source = gc.options.LoadOptions()
        load_options_source.password = source_password
        comparer = gc.Comparer(source_stream, load_options_source)

        # Add target streams and load options
        target_streams = []
        for target_path, target_password in zip(target_paths, target_passwords):
            target_stream = open(target_path, 'rb')
            target_streams.append(target_stream)
            load_options_target = gc.options.LoadOptions()
            load_options_target.password = target_password
            comparer.add(target_stream, load_options_target)

        # Perform the compare operation and save the result
        comparer.compare(output_file_name)

        # Close target streams after comparison
        for target_stream in target_streams:
            target_stream.close()

    print(f"\nDocuments compared successfully.\nCheck output in {output_file_name}.")
```