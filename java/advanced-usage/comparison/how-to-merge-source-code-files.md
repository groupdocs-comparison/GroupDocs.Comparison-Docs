---
id: how-to-merge-source-code-files
url: comparison/java/how-to-merge-source-code-files
title: How to merge source code files
weight: 8
description: "This article explains how to control file merging in GroupDocs.Comparison for Java."
keywords: Merging documents, documents diff, compare documents, compare files
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
    name: How to get source and target text in Java
    description: Learn how to get source and target text in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method.
      - name: Create an array for file changes
        text: Call the GetChanges method on the Comparer object and assign the result to an array of type ChangeInfo.
      - name: Reject or accept changes
        text: To reject or Accept changes, access the ComparisonAction field of the array element and set the Reject or Accept value from the enum ComparisonAction.
      - name: Create an array for file changes
        text: Call the GetChanges method on the Comparer object and assign the result to an array of type ChangeInfo.
      - name: Apply Changes
        text: To apply changes call the method ApplyChanges of the Comparer class object. The method takes a file stream parameter of the resulting file and object of ApplyChangeOptions class which should contains a ChangeInfo array.
---

---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to merge source code files by using the [ComparisonAction](https://reference.groupdocs.com/comparison/java/groupdocs.comparison.result/changeinfo/properties/comparisonaction) properties:

- [ComparisonAction.Accept](https://reference.groupdocs.com/comparison/java/groupdocs.comparison.result/comparisonaction) accepts the found changes and adds them to the file without highlighting
- [ComparisonAction.Reject](https://reference.groupdocs.com/comparison/java/groupdocs.comparison.result/comparisonaction) rejects the found changes and removes them from the output file

To apply/reject changes to output file, follow these steps:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer) object. Specify the source document path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target document path or stream.
3.  Call the [compare](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method.
4.  Call the [GetChanges](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges/index) method to get changes list.
5.  Set the [ComparisonAction](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.result/changeinfo/properties/comparisonaction) of the appropriate change object to the [ComparisonAction.Accept](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.result/comparisonaction) or [ComparisonAction.Reject](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.result/comparisonaction) value;
6.  Call the [ApplyChanges](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/applychanges/index) method. Specify the collection of changes.

For example, you need to compare and merge several versions of source code files and to accept or discard changes made by different persons.

![](/comparison/java/images/how-to-merge-source-code-file-source.png)
![](/comparison/java/images/how-to-merge-source-code-file-target.png)

The differences show that two methods are in the **source.cs** file: `AddNumbers` and `Sum`.

If you do not use the [ComparisonAction](https://reference.groupdocs.com/comparison/java/groupdocs.comparison.result/changeinfo/properties/comparisonaction) property, all changes are committed to the output file, and these methods are removed. If you need to control the merging of files, the [ComparisonAction](https://reference.groupdocs.com/comparison/java/groupdocs.comparison.result/changeinfo/properties/comparisonaction) property helps you.

The following code snippet shows how to merge two source code files:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    comparer.Compare(resultPath);

    ChangeInfo[] changes = comparer.GetChanges();
    for (int i = 0; i < 10; i++)
    {
        changes[i].ComparisonAction = ComparisonAction.Accept;
    }

    for (int i = 10; i < changes.Length; i++)
    {
    	changes[i].ComparisonAction = ComparisonAction.Reject;
    }

    comparer.ApplyChanges(File.Create(resultPath), new ApplyChangeOptions { Changes = changes });
}
```
{{< /tab >}}
{{< /tabs >}}


As a result, you get a merged source code file where the deleted elements are marked in <font color="red">**red**</font>, the added – in <font color="blue">**blue**</font>, and the modified – in <font color="green">**green**</font>.

Also you  receive an HTML file in HTML  with changed places in the code.

| Result source code file                                                 | Result HTML file                                                          |
| ----------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| ![](/comparison/java/images/how-to-merge-source-code-file-result-CS.png) | ![](/comparison/java/images/how-to-merge-source-code-file-result-HTML.png) |

As you can see from the resulting files, only one of the two methods was removed.
