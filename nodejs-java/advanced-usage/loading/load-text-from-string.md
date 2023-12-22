---
id: load-text-from-string
url: comparison/nodejs-java/load-text-from-string
title: Load text from string
weight: 5
description: "This article explains how to load values from variables of string type when using GroupDocs.Comparison for Node.js via Java."
keywords: Load values from variables of string type, Load text with GroupDocs.Comparison
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using JavaScript language and GroupDocs.Comparison for Node.js via Java
    productCode: comparison
    productPlatform: nodejs-java
  showVideo: True
  howTo:
    name: How to load text from a string in JavaScript
    description: Learn how to load a file from a string in JavaScript step by step
    steps:
      - name: Create an object and load the source text
        text: Create an object of the Comparer class. The constructor takes the source text by the first parameter and a LoadOption object with the LoadText parameter.
      - name: Load target text
        text: Add the target text using the Add method. The second parameter is a LoadOption object that contains LoadText = true.
      - name: Compare documents
        text: Create a string variable where the result of the comparison will be placed.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to compare values from the `String` type variables.

To compare text from variables, follow these steps:

1.  Instantiate the `LoadOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options.load/loadoptions)--> object. Set the `LoadText`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options.load/loadoptions/#setLoadText-boolean-)--> property to `true` (this indicates that the passed string contains a text to be compared, not a file path).
2.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer)--> object. Specify the source variable of the `String` type and the `LoadOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options.load/loadoptions)--> object created in the previous step.
3.  Call the `add()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method. Specify the target variable of the `String` type and the `LoadOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options.load/loadoptions)--> object created in the previous step.
4.  Call the `Comparer`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer)--> method.
5.  Call the `getResultString`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#getResultString- -)--> method to get a string with the comparison result.

The following code snippet shows how to load values from variables:

```javascript
const loadOptions = new groupdocs.comparison.LoadOptions();
loadOptions.setLoadText(true);
const comparer = new groupdocs.comparison.Comparer("source text", loadOptions);
comparer.add("target text", loadOptions);
comparer.compare();
String result = comparer.getResultString();
```

The result is as follows:

![](/comparison/nodejs-java/images/load-text-from-string.png)

The following code snippet shows how to combine the different ways of specifying documents:

```javascript
const loadOptions = new groupdocs.comparison.LoadOptions();
loadOptions.setLoadText(true);
const comparer = new groupdocs.comparison.Comparer(sourceInputStream);
comparer.add("target text", loadOptions);
comparer.compare();
String result = comparer.getResultString();
```