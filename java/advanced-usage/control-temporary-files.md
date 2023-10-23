---
id: control-temporary-files
url: comparison/java/control-temporary-files
title: Control temporary files
weight: 7
description: "This article explains how to control temporary files used by GroupDocs.Comparison for Java."
keywords: control temporary files
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Manage temporary files creation in GroupDocs.Comparison for Java
    productCode: comparison
    productPlatform: java
  showVideo: True
  howTo:
    name: How to control temporary files creation in GroupDocs.Comparison for Java
    description: Learn how to control temporary files creation in GroupDocs.Comparison for Java
    steps:
      - name: Create a class to control temporary files
        text: Create a class that will implement TemporaryFileManager interface with it's methods.
      - name: Setup GroupDocs.Comparison for Java to use the class
        text: Use method setInstance of TemporaryFileManagerFactory class to make it use custom TemporaryFileManager implementation.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to manage temporary files and directories. To do this, follow these steps:

1. Create a class that implements the `com.groupdocs.comparison.common.tempfiles.TemporaryFileManager` interface and its methods:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
class CustomTemporaryFileManager implements TemporaryFileManager {

    @Override
    public Path createTempDirectory() {
        // Implementation
    }

    @Override
    public Path createTempDirectory(String... pathsAsStrings) {
        // Implementation
    }

    @Override
    public Path createTempDirectory(Path... paths) {
        // Implementation
    }

    @Override
    public Path createTempFile() {
        // Implementation
    }

    @Override
    public Path createTempFile(String... pathsAsStrings) {
        // Implementation
    }

    @Override
    public Path createTempFile(Path... paths) {
        // Implementation
    }

    @Override
    public void delete(Path path) {
        // Implementation
    }

    @Override
    public void cleanup() {
        // Implementation
    }
}
```
{{< /tab >}}
{{< /tabs >}}

2. Create an object of this class and pass it to the `setInstance` method of `TemporaryFileManagerFactory`:

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
final CustomTemporaryFileManager customTemporaryFileManager = new CustomTemporaryFileManager();
TemporaryFileManagerFactory.setInstance(customTemporaryFileManager);
```
{{< /tab >}}
{{< /tabs >}}

Now [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) uses the implementation for creating temporary files and directories.
 
3. Use it in the next way:

{{< tabs "example3">}}
{{< tab "Java" >}}
```java
final TemporaryFileManager temporaryFileManager = TemporaryFileManagerFactory.getInstance();
final Path tempFile = temporaryFileManager.createTempFile("temp.txt");
// Do something with the file
temporaryFileManager.delete(tempFile);
```
{{< /tab >}}
{{< /tabs >}}

{{< alert style="info" >}}
Default implementation creates temporary files and directories in a directory specified by `java.io.tmpdir` property.
{{< /alert >}}
