---
id: load-password-protected-documents
url: comparison/python-net/load-password-protected-documents
title: Load password-protected documents
weight: 3
description: "This article explains how to load password-protected PDF, Word, Excel, PowerPoint documents when using GroupDocs.Comparison for Python via .NET."
keywords: Load password-protected document, Load protected document with GroupDocs.Comparison
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
    name: How to load password-protected documents in Python
    description: Learn how to load password-protected documents in Python step by step
    steps:
      - name: Create an object of LoadOption
        text: Create an object of LoadOption which contains the password parameters.
      - name: Load the target file
        text: Add the path to the target files using the Add method. The second parameter is a LoadOption object that contains the password.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file stream.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/python-net) allows you to compare documents that are protected with a password.  

To compare password-protected documents, follow these steps:

1.  Instantiate the `LoadOptions`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options.load/loadoptions)--> object. Specify source document password;
2.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer)--> object. Specify the source document path or stream and `LoadOptions`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options.load/loadoptions)--> object created in the previous step.
3.  Instantiate another `LoadOptions`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options.load/loadoptions)--> object. Specify the target document password.
4.  Call the `add()`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method. Specify the target document path or stream and the `LoadOptions`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options.load/loadoptions)--> object created in the previous step.
5.  Call the `compare()`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer)--> method.

The following code snippet shows how to compare password-protected documents:

```python
def compare_multiple_documents_protected_path(output_file_name, source_path, target_paths, source_password, target_passwords, result_path):
    try:
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
    
    except Exception as error:
        # Handle errors
        print('An error occurred during the document comparison:', error)
```