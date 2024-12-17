---
id: set-password-for-output-document
url: comparison/python-net/set-password-for-output-document
title: Set password for output document
weight: 2
description: "This article explains how to set document password after files comparison within your Python applications using GroupDocs.Comparison for Python via .NET."
keywords: Compare document and protect with password
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
    name: How to set a password on save in Python
    description: Learn how to set document password on save in Python step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target file
        text: Add the path to the target file using the Add method.
      - name: Create an object of CompareOptions
        text: Create an object of CompareOptions class with the PasswordSaveOption parameter initialized by PasswordSaveOption enum value.
      - name: Create an object of SaveOptions
        text: Create an object of SaveOptions class with the Password parameter.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter, SaveObject object and CompareOption object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/python-net) allows you to protect the output document with a password.

To protect the output document, follow these steps:

1.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer)--> object. Specify the source document path or stream.
2.  Call the `add()`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method. Specify the target document path or stream.
3.  Instantiate the `CompareOptions`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/)--> object. Call the `password_save_option`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions/#setPasswordSaveOption-com.groupdocs.comparison.options.enums.PasswordSaveOption-)--> method and specify the `PasswordSaveOption.USER` value.
4.  Instantiate the `SaveOptions`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options.save/SaveOptions)--> object. Call the `password`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options.save/saveoptions/#setPassword-java.lang.String-)--> property to specify a password string.
5.  Call the `compare()`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer/#compare-java.lang.String-)--> method. Specify the `SaveOptions`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options.save/SaveOptions)--> and `CompareOptions`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options/compareoptions)--> objects as parameters.

The following code snippet shows how to compare documents and protect the output document with a password:

```python
import groupdocs.comparison as gc

def set_password_for_resultant_document(output_file_path, source_file_path, target_file_path):
    try:
        # Initialize comparer with the source document
        with gc.Comparer(source_file_path) as comparer:
            # Add the target document for comparison
            comparer.add(target_file_path)
            
            # Set comparison options
            compare_options = gc.options.CompareOptions()
            compare_options.password_save_option = gc.options.PasswordSaveOption.USER
            
            # Set save options
            save_options = gc.options.SaveOptions()
            save_options.password = "3333"
            
            # Compare the documents and save the result
            comparer.compare(output_file_path, save_options, compare_options)
        
        # Log the success message with the output file path
        print(f"\nDocuments compared successfully.\nCheck output in {output_file_path}.")
    
    except Exception as error:
        # Error handling
        print(f'An error occurred during the document comparison: {error}')
```
