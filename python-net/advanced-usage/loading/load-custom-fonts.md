---
id: load-custom-fonts
url: comparison/python-net/load-custom-fonts
title: Load custom fonts
weight: 4
description: "This article explains how to load custom fonts PDF, Word, Excel, PowerPoint documents when using GroupDocs.Comparison for Python via .NET."
keywords: Custom fonts, fonts
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
    name: How to load custom fonts in Python
    description: Learn how to load custom fonts in Python step by step
    steps:
      - name: Create an object and load font.
        text: Create an object of the LoadOptions class. Access the object field using the Add method with the path to the font file parameter.
      - name: Create an object and load the source file with Options
        text: Create an object of Comparer class. The constructor takes the source file path parameter and object of LoadOptions. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target file
        text: Add the path to the target file using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the options object.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/python-net) allows you to compare documents that contain non-standard fonts.

To connect custom fonts and compare documents, follow these steps:

1. Instantiate the `LoadOptions`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options.load/loadoptions)--> object. Specify a list of directories with custom fonts.
2. Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer)--> object with the source document path or stream and the `LoadOptions`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison.options.load/loadoptions)--> object created in the previous step.
3. Call the `add()`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method. Specify the target document path or stream.
4. Call the `Comparer`<!--](https://reference.groupdocs.com/comparison/python-net/com.groupdocs.comparison/comparer)--> method.

The following code snippet shows how to connect custom fonts and compare documents:

```python
import groupdocs.comparison as gc

def load_custom_fonts(output_file_path, source_file_path, target_file_path):
    # Initialize LoadOptions and add font directory
    load_options = gc.options.LoadOptions()
    load_options.font_directories.append("./fontPath/")

    # Initialize comparer with the source document
    with gc.Comparer(source_file_path, load_options) as comparer:
        # Add the target document for comparison
        comparer.add(target_file_path, load_options)
        
        # Compare the documents and save the result
        comparer.compare(output_file_path)
    
    # Log the success message with the output file path
    print(f"\nDocuments compared successfully.\nCheck output in {output_file_path}.")
```