---
id: set-document-metadata-on-save
url: comparison/python-net/set-document-metadata-on-save
title: Set document metadata on save
weight: 1
description: "Follow this guide and learn how to set document metadata when saving output document after files comparison within your Python applications."
keywords: Save document metadata,  Compare documents, Document comparison, File diff
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
    name: How to set document metadata on save in Python
    description: Learn how to set document metadata on save in Python step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target file
        text: Add the path to the target file using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the SaveOtions object with the required metadata parameter initialized by the MetadataType enum.
---

A document can contain some metadata information, such as author, organization, etc. [GroupDocs.Comparison](https://products.groupdocs.com/comparison/python-net) allows you to select metadata sources when saving the output document.  

Possible metadata sources are as follows:

- Source document metadata
- Target document metadata
- User-defined metadata

To set output document metadata, follow these steps:

1.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer)--> object. Specify the source document path or stream.
2.  Call the `add()`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method. Specify the target document path or stream.
3.  Instantiate the `SaveOptions`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options.save/SaveOptions)--> object. Set the appropriate `MetadataType` via `clone_metadata_type`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options.save/saveoptions/#setCloneMetadataType-com.groupdocs.comparison.options.enums.MetadataType-)--> property.
4.  Call the `compare()`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer/#compare-java.lang.String-)--> method. Specify the `SaveOptions`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options.save/saveoptions/)--> object as a parameter.

The following code snippets show how to set output document metadata:

## Set metadata from the source file

```python
import groupdocs.comparison as gc

def set_document_metadata_on_save(output_file_path, source_file_path, target_file_path):
    # Initialize comparer with the source document
    with gc.Comparer(source_file_path) as comparer:
        # Add the target document for comparison
        comparer.add(target_file_path)
        
        # Set comparison options
        save_options = gc.options.SaveOptions()
        save_options.clone_metadata_type = gc.options.MetadataType.SOURCE
        
        # Compare the documents and save the result
        comparer.compare(output_file_path, save_options)
    
    # Log the success message with the output file path
    print(f"\nDocuments compared successfully.\nCheck output in {output_file_path}.")
```

## Set metadata from the target file

```python
import groupdocs.comparison as gc

def set_document_metadata_on_save(output_file_path, source_file_path, target_file_path):
    # Initialize comparer with the source document
    with gc.Comparer(source_file_path) as comparer:
        # Add the target document for comparison
        comparer.add(target_file_path)
        
        # Set comparison options
        save_options = gc.options.SaveOptions()
        save_options.clone_metadata_type = gc.options.MetadataType.TARGET
        
        # Compare the documents and save the result
        comparer.compare(output_file_path, save_options)
    
    # Log the success message with the output file path
    print(f"\nDocuments compared successfully.\nCheck output in {output_file_path}.")
```

## Set user-defined metadata 

```python
import groupdocs.comparison as gc

def set_document_metadata_on_save(output_file_path, source_file_path, target_file_path):
    # Initialize comparer with the source document
    with gc.Comparer(source_file_path) as comparer:
        # Add the target document for comparison
        comparer.add(target_file_path)
        
        # Set file author metadata
        file_author_metadata = gc.options.FileAuthorMetadata()
        file_author_metadata.author = "Tom"
        file_author_metadata.company = "GroupDocs"
        file_author_metadata.last_save_by = "Jack"

        # Set comparison options
        save_options = gc.options.SaveOptions()
        save_options.clone_metadata_type = gc.options.MetadataType.FILE_AUTHOR
        save_options.file_author_metadata = file_author_metadata
        
        # Compare the documents and save the result
        comparer.compare(output_file_path, save_options)
    
    # Log the success message with the output file path
    print(f"\nDocuments compared successfully.\nCheck output in {output_file_path}.")
```
