---
id: compare-multiple-documents
url: comparison/python-net/compare-multiple-documents
title: Compare multiple documents
weight: 3
description: "Learn more about how to compare multiple Word documents or PowerPoint presentations simultaneously with GroupDocs.Comparison for Python via .NET."
keywords: Compare multiple documents, documents multi-comparison, compare more than two documents 
productName: GroupDocs.Comparison for Python via .NET
hideChildren: True
structuredData:
    showOrganization: True
---
{{< alert style="info" >}}This feature is available only for Word documents, PowerPoint and Open Document presentations.{{< /alert >}}

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/python-net) allows you to compare more than two documents.

To compare several documents, follow these steps:

1.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer)--> object. Specify the source document path or stream.
2.  Call the `add()`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method and specify the target document path or stream. Repeat this step for every target document.
3.  Call the `compare()`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer/#compare-java.lang.String-)--> method.

The following code snippets show how to several documents:

## Compare several documents from a local disk

```python
import groupdocs.comparison as gc

def compare_multiple_documents(source_path, target_paths, result_path, output_directory, output_file_name):

    # Initialize the comparer with the source file
    comparer = gc.Comparer(source_path)

    # Add target files
    for target_path in target_paths:
        comparer.add(target_path)

    # Set comparison options and save options
    save_options = gc.options.SaveOptions()
    compare_options = gc.options.CompareOptions()

    # Perform the compare operation and save the result
    comparer.compare(output_file_name, save_options, compare_options)

    print(f"\nDocuments compared successfully.\nCheck output in {output_file_name}.")
```

The result is as follows:

![](/comparison/python-net/images/compare-multiple-word.png)

## Compare several documents from a stream

```python
import groupdocs.comparison as gc

def compare_multiple_documents(output_directory, output_file_name, sourcePath, targetPath1, targetPath2, targetPath3):
    # Initialize the comparer with the source file stream
    with open(sourcePath, 'rb') as source_stream:
        comparer = gc.Comparer(source_stream)
    
        # Add the target file streams
        with open(targetPath1, 'rb') as target_stream1, \
                open(targetPath2, 'rb') as target_stream2, \
                open(targetPath3, 'rb') as target_stream3:
                
            comparer.add(target_stream1)
            comparer.add(target_stream2)
            comparer.add(target_stream3)

            # Perform the compare operation and save the result
            comparer.compare(output_file_name)

    print(f"\nDocuments compared successfully.\nCheck output in {output_file_name}.")
```


