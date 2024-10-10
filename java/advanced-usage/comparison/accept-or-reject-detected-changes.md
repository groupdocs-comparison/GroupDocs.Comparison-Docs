---
id: accept-or-reject-detected-changes
url: comparison/java/accept-or-reject-detected-changes
title: Accept or Reject detected changes
weight: 1
description: "Following this guide you will learn how to apply or discard changes detected during document comparison process using GroupDocs.Comparison for Java API."
keywords: Apply changes to compared document, reject comparison changes, document comparison changes
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Java language and GroupDocs.Comparison for Java
    productCode: comparison
    productPlatform: java
  showVideo: True
  howTo:
    name: How to accept or reject detected changes in Java
    description: Learn how to accept or reject detected changes in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path or source file stream parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file or target file stream using the Add method.
      - name: Compare files
        text: Call the Compare method of your object without parameters.
      - name: Create an array for file changes
        text: Call the GetChanges method on the Comparer object and assign the result to an array of type ChangeInfo.
      - name: Reject or accept changes
        text: To reject or Accept changes, access the ComparisonAction field of the array element and set the Reject or Accept value from the enum ComparisonAction.
      - name: Apply Changes
        text: To apply changes call the method ApplyChanges of the Comparer class object. The method takes a file stream parameter of the resulting file and object of ApplyChangeOptions class which should contains a ChangeInfo array.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to apply or discard specific changes between source and target documents and save output document with (or without) selected changes. 

To apply/reject changes to output document, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target document path or stream.
3.  Call the [compare()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method.
4.  Call the [getChanges()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#getChanges--) method to get changes list.
5.  Call the [setComparisonAction()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/changeinfo/#setComparisonAction-com.groupdocs.comparison.result.ComparisonAction-) method of the appropriate change object. Specify the [ComparisonAction.ACCEPT](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/comparisonaction#ACCEPT) or the [ComparisonAction.REJECT](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/comparisonaction#REJECT) value.
6.  Call the [applyChanges()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#applyChanges-java.lang.String-com.groupdocs.comparison.options.save.SaveOptions-com.groupdocs.comparison.options.ApplyChangeOptions-) method. Specify the collection of changes.

The [ApplyChangeOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/applychangeoptions/) class includes the following properties:

- [getChanges](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/applychangeoptions/#getChanges--) is a list of changes that must be applied (or not) to the output document
- [isSaveOriginalState](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/applychangeoptions/#isSaveOriginalState--) is an option to reep the original state of the compared result after applying changes

The following code snippets show how to accept/reject changes:

## Accept or Reject changes for documents stored at local disk

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.options.ApplyChangeOptions;
import com.groupdocs.comparison.options.save.SaveOptions;
import com.groupdocs.comparison.result.ChangeInfo;
import com.groupdocs.comparison.result.ComparisonAction;
import java.nio.file.Path;
// ...

try (Comparer comparer = new Comparer("source.docx")) {
    comparer.add("target.docx");
    final Path resultPath = comparer.compare();
    ChangeInfo[] changes = comparer.getChanges();
    changes[0].setComparisonAction(ComparisonAction.REJECT);
    comparer.applyChanges("result.docx", new SaveOptions(), new ApplyChangeOptions(changes));
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

|                            Accepted changes                             |                             Rejected changes                            |
| :-----------------------------------------------------------------: | :----------------------------------------------------------------: |
| ![](/comparison/java/images/accepted-changes.png) | ![](/comparison/java/images/rejected-changes.png) |



## Accept or reject changes for documents provided as a stream

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.options.ApplyChangeOptions;
import com.groupdocs.comparison.options.CompareOptions;
import com.groupdocs.comparison.options.save.SaveOptions;
import com.groupdocs.comparison.result.ChangeInfo;
import com.groupdocs.comparison.result.ComparisonAction;
import java.nio.file.Path;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
// ...

try (Comparer comparer = new Comparer(sourceInputStream)) {
    comparer.add(targetInputStream);
    final Path resultPath = comparer.compare(new SaveOptions(), new CompareOptions());
    ChangeInfo[] changes = comparer.getChanges();
    changes[0].setComparisonAction(ComparisonAction.REJECT);
    comparer.applyChanges(resultOutputStream, new ApplyChangeOptions(changes));
}
```
{{< /tab >}}
{{< /tabs >}}

## Accept or reject detected changes using SaveOriginalState option

{{< tabs "example3">}}
{{< tab "Java" >}}
```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.options.ApplyChangeOptions;
import com.groupdocs.comparison.result.ChangeInfo;
import com.groupdocs.comparison.result.ComparisonAction;
import java.nio.file.Path;
// ...

try (Comparer comparer = new Comparer("source.docx")) {
    comparer.add("target.docx");
    final Path resultPath = comparer.compare();
    ChangeInfo[] changes = comparer.getChanges();
    changes[0].setComparisonAction(ComparisonAction.REJECT);
    ApplyChangeOptions changeOptions = new ApplyChangeOptions();
    changeOptions.setChanges(changes);
    changeOptions.setSaveOriginalState(true);
    comparer.applyChanges(resultFileWithRejectedChange, changeOptions);
    changes = comparer.getChanges();
    changes[0].setComparisonAction(ComparisonAction.ACCEPT);
    comparer.applyChanges(resultFileWithAcceptedChange, new ApplyChangeOptions(changes));
}
```
{{< /tab >}}
{{< /tabs >}}
