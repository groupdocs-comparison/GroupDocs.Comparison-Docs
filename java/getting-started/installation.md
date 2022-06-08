---
id: installation
url: comparison/java/installation
title: Installation
weight: 4
description: ""
keywords: 
productName: GroupDocs.Comparison for Java
hideChildren: False
structuredData:
    showOrganization: True
    application:
        name: Documents Comparison Tool
        description: The product allows to compare Pdf, Word, Excel, PowerPoint, AutoCad, Image, Code and much more file formats. Comparison API also supports accepting or rejecting changes, extracting document information and generating comparison report
        productCode: comparison
        productPlatform: java
    howTo:
        name: How to install Comparison API
        description: Learn how to install GroupDocs.Comparison into Java or Kotlin project
        steps:
        - name: Specify GroupDocs Repository
          text: Add GroupDocs Maven repository to the project
        - name: Define Comparison dependency
          text: Add comparison dependency so that the project will download required libraries
---
### Operating Systems

**[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** can be executed on any Operating System with Java JDK installed.

*   Windows Desktops and Servers
*   Linux
*   Mac OS

### Supported Runtime

**[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** supports Java run-time version 8 and above (Kotlin is supported as well).
(_Java 7 is **DEPRECATED** (Since next version Java 7 will not be supported anymore)_)

### Development Environments

*   NetBeans
*   IntelliJ IDEA
*   Eclipse

## Installation from GroupDocs Repository using Maven

GroupDocs hosts all Java APIs on [GroupDocs Repository](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo). You can easily use [GroupDocs.Comparison for Java](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-comparison) API directly in your Maven projects with simple configurations.

### Specify GroupDocs Repository

First, you need to specify GroupDocs repository configuration/location in your Maven `pom.xml` as follows:

<details open><summary>Connect GroupDocs repository</summary><blockquote>
<details open><summary>Maven</summary>

```xml
<repository>
    <id>GroupDocsJavaAPI</id>
    <name>GroupDocs Java API</name>
    <url>https://repository.groupdocs.com/repo/</url>
</repository>
```

</details>
<details><summary>Gradle</summary>

```groovy
repositories {
    maven {
        url "https://repository.groupdocs.com/repo/"
    }
}
```

</details>
<details><summary>Kotlin</summary>

```kotlin
repositories {
    maven(url = "https://repository.groupdocs.com/repo/")
}
```

</details>
</blockquote></details>

### Define Comparison Dependency

Then define **[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)** API dependency in your `pom.xml` as follows:

<details open><summary>Add GroupDocs.Comparison dependency</summary><blockquote>
<details open><summary>Maven</summary>

```xml
<dependency>
    <groupId>com.groupdocs</groupId>
    <artifactId>groupdocs-comparison</artifactId>
    <version>22.3</version>
</dependency>
```

</details>
<details><summary>Gradle</summary>

```groovy
dependencies {
    implementation 'com.groupdocs:groupdocs-comparison:22.3'
}
```

</details>
<details><summary>Kotlin</summary>

```kotlin
dependencies {
    implementation("com.groupdocs:groupdocs-comparison:22.3")
}
```

</details>
</blockquote></details>

After performing above-mentioned steps, GroupDocs.Comparison for Java dependency will finally be added to your Maven project.
