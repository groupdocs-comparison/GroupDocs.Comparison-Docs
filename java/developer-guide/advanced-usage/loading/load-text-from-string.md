---
id: load-text-from-string
url: comparison/java/load-text-from-string
title: Load text from string
weight: 5
description: "This article explains how to load values from variables of string type when using GroupDocs.Comparison for Java."
keywords: Load values from variables of string type, Load text with GroupDocs.Comparison
productName: GroupDocs.Comparison for Java
hideChildren: False
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/java) allows to compare values from variables of *string* type.
The following are the steps to compare text from variables:

* Instantiate [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) object and set [LoadText](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions#setLoadText(boolean)) property to true (this indicates that passed string contains text to be compared, not file path);
* Pass source string content to [Comprer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) class constructor together with created [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions)
* Pass target string content to [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String,%20com.groupdocs.comparison.options.load.LoadOptions)) method together with [LoadOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions) in which [LoadText](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/LoadOptions#setLoadText(boolean)) property is set to true.

The following code snippet shows how to load values from variables:
```java
try (Comparer comparer = new Comparer("source text", new LoadOptions(true))) {
    comparer.add("target text", new LoadOptions(true));
    comparer.compare();
    String result = comparer.getResultString();
}
```
---

Can also be combined with different ways of passing documents (be it file path or stream), as shown in the following code example:
```java
try (Comparer comparer = new Comparer(inputStream)) {
    comparer.add("target text", new LoadOptions(true));
    comparer.compare();
    String result = comparer.getResultString();
}
```

## More resources

### GitHub Examples
You may easily run the code above and see the feature in action in our GitHub examples:

*   [GroupDocs.Comparison for Java examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
*   [GroupDocs.Comparison for .NET examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
*   [Document Comparison for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
*   [Document Comparison for Java Spring UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
*   [Document Comparison for .NET MVC UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
*   [Document Comparison for .NET App WebForms UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)


### Free Online App
Along with full-featured Java library we provide simple, but powerful free Apps.
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSGand other documents with free to use online **[GroupDocs Comparison App](https://products.groupdocs.app/comparison)**.
