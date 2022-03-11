---
id: installation
url: comparison/java/installation
title: Installation
weight: 4
description: ""
keywords: 
productName: GroupDocs.Comparison for Java
hideChildren: False
---
### Operating Systems

**[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** can be executed on any Operating System with Java JDK installed.

*   Windows Desktops and Servers
*   Linux
*   Mac OS

### Supported Runtime

**[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** supports Java run-time version 7 (1.7) and above.

### Development Environments

*   NetBeans
*   IntelliJ IDEA
*   Eclipse

## Installation from GroupDocs Repository using Maven

GroupDocs hosts all Java APIs on [GroupDocs Repository](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo). You can easily use [GroupDocs.Comparison for Java](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-comparison) API directly in your Maven projects with simple configurations.

### Specify GroupDocs Repository Configuration

First, you need to specify GroupDocs repository configuration/location in your Maven `pom.xml` as follows:

```xml
<repositories>
	<repository>
		<id>GroupDocsJavaAPI</id>
		<name>GroupDocs Java API</name>
		<url>https://repository.groupdocs.com/repo/</url>
	</repository>
</repositories>
```

### Define GroupDocs.Comparison for Java API Dependency

Then define **[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** API dependency in your `pom.xml` as follows:

```xml
<dependencies>
    <dependency>
        <groupId>com.groupdocs</groupId>
        <artifactId>groupdocs-comparison</artifactId>
        <version>22.3</version> 
    </dependency>
</dependencies>
```

After performing above-mentioned steps, GroupDocs.Comparison for Java dependency will finally be added to your Maven project.
