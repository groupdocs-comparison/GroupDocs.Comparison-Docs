---
id: how-to-use-dropbox-api-as-files-source-for-comparison-api
url: comparison/java/how-to-use-dropbox-api-as-files-source-for-comparison-api
title: How to use Dropbox API as files source for Comparison API
weight: 18
description: "The article describes the way to use Dropbox API as files source for GroupDocs Comparison API"
keywords: Compare documents, Dropbox API, Compare files from Dropbox, Comparison Tool with Java and Dropbox API
productName: GroupDocs.Comparison for Java
hideChildren: False
structuredData:
    showOrganization: True
    application:
        name: Pdf, Excel and Word comparer
        description: The product allows to compare Pdf, Excel and Word documents using DropBox API
        productCode: comparison
        productPlatform: java
    howTo:
        name: How to use DropBox API to spot differences of documents
        description: Learn how to use DropBox API to spot differences of documents in Java or Kotlin project
        steps:
        - name: Configuring Dropbox API
          text: Description of steps required to configure Dropbox API
        - name: Configuring project to use Dropbox API with Comparison API
          text: All required configurations to use Dropbox API and Comparison API in the project
        - name: Creating Dropbox API objects
          text: Create Client object to work with Dropbox API
        - name: Get list of files using Dropbox API
          text: Connect to Dropbox API and load list of files stored in it
        - name: Comparing documents directly from Dropbox
          text: Compare documents which are stored in Dropbox account
---
Nowadays Cloud services are highly popular. Therefore, lots of people use them as a storage for photos, images, documents and other files. This way, you may need opportunity to compare documents directly from Dropbox, without downloading and saving them locally. You can do it easily using [GroupDocs.Comparison API](https://products.groupdocs.com/comparison) together with Dropbox API.

### Configuring Dropbox API

Preparing to using Dropbox API you must have Dropbox account. It is very easy to register one. You can find out required steps on Dropbox documentation page. Still, below are steps, which you need to do before using Dropbox API.

#### Creating Dropbox application

1. Open [Dropbox App Console](https://www.dropbox.com/developers/apps)
2. Click `Create app` to create new application

   ![](comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_1.png)

3. Choose `Scoped access API`

   ![](comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_2.png)

4. Then choose `App folder` (you can choose `Full dropbox` to give app access to all your files)

   ![](comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_3.png)

5. Finally, enter app name and click `Create app`

   ![](comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_4.png)

#### Updating Dropbox API settings

1. First of all, open `Permissions` tab and select next permissions

   1. files.metadata.write
   2. files.metadata.read
   3. files.content.write
   4. files.content.read
   
   **Do not forget** to click `Submit` button to save changes

   ![](comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_5.png)

2. After saving changes go back to `Settings` tab and generate access token clicking `Generate` button

   ![](comparison/java/images/how-to-use-dropbox-api-as-files-source-for-comparison-api_6.png)

   **Keep in mind** that after any changes of permissions you must generate new token, old one **will not** automatically updated according to permissions changes

4. That's actually all. The token is the only thing that you need to access your Dropbox files. Save the token somewhere, we will use it later.

### Configuring project to use Dropbox API with Comparison API

To use Dropbox API as a file storage for comparing documents, you need to add some libraries and repository to the project.

<details open><summary>Repository</summary><blockquote>
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

<details open><summary>Libraries</summary><blockquote>
<details open><summary>Maven</summary>

```xml
<dependency>
   <groupId>com.groupdocs</groupId>
   <artifactId>groupdocs-comparison</artifactId>
   <version>22.3</version>
</dependency>
<dependency>
   <groupId>com.dropbox.core</groupId>
   <artifactId>dropbox-core-sdk</artifactId>
   <version>4.0.1</version>
</dependency>
```

</details>
<details><summary>Gradle</summary>

```groovy
dependencies {
   implementation 'com.groupdocs:groupdocs-comparison:22.3'
   implementation 'com.dropbox.core:dropbox-core-sdk:4.0.1'
}
```

</details>
<details><summary>Kotlin</summary>

```kotlin
dependencies {
    implementation("com.groupdocs:groupdocs-comparison:22.3")
    implementation("com.dropbox.core:dropbox-core-sdk:4.0.1")
}
```

</details>
</blockquote></details>

### Creating Dropbox API objects

Actually, it is very easy to start working with Dropbox API

   ```java
   DbxRequestConfig config = DbxRequestConfig.newBuilder("mycompany/best-comparison-app").build();
   DbxClientV2 client = new DbxClientV2(config, "YOUR ACCESS TOKEN");
   ```

Where:
   1. `mycompany/best-comparison-app` - is just identifier that you will see in logs of Dropbox website
   2. `YOUR ACCESS TOKEN` - here should be access token, that was generated previously

### Get list of files using Dropbox API

To print list of files which are in your Dropbox app directory, run next code (do not forget to upload some files via Dropbox webpage, because by default app directory is empty)

```java
   ListFolderResult result = client.files().listFolder("");
   final List<Metadata> entries = result.getEntries();
   // final boolean hasMore = result.getHasMore(); // There are at least one more page with results
   
   for (Metadata metadata : entries) {
      final String path = metadata.getPathLower();
      final String fileName = metadata.getName();
      final boolean isDirectory = metadata instanceof FolderMetadata;
      final long size = metadata instanceof FileMetadata ? ((FileMetadata) metadata).getSize() : 0;
      
      System.out.printf("- %s  %s (%d bytes)\n", path, fileName, size);
   }
```

Here is an example of the output:

```shell
- /target.pdf  target.pdf (390069 bytes)
- /source.pdf  source.pdf (767524 bytes)
```

In the output each line is one file. It's path, name and size. You can use this information to show list of files. There are more data, that can be got for each file. More information can be found on Dropbox Documentation page. **Keep in mind**, the code above is just example. There is a pagination, that should be processed in order to get all files.

### Comparing documents directly from Dropbox

[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java/) is a flexible, powerful and modern library that you can use in any Java, Kotlin or other Java compatible projects to compare Word, Excel, PowerPoint documents, photos, images, diagrams, code files, and much more [supported file formats](/comparison/java/supported-document-formats/). Comparison API contains lots of flexible settings, for example: accepting/rejecting changes, generating summary page, generating document preview images, comparing more than two documents (multi comparing), changing comparison sensitivity and changes highlighting styles. Read more about settings in [the documentation](/comparison/java/getting-started/). On our [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) you can find different samples of using Comparison library with different frameworks, as Dropwizard, Spring, Kotlin Compose Desktop and so on.

#### Saving the result Document on local disk

It is easy compare dwo documents from on your Dropbox saving the result document on local disk or writing it into Java output stream to use it wherever you want.

```java
try (final DbxDownloader<FileMetadata> downloadSource = client.files().download("/source.pdf");
    final DbxDownloader<FileMetadata> downloadTarget = client.files().download("/target.pdf")) {
   try (final InputStream sourceStream = downloadSource.getInputStream();
      final InputStream targetStream = downloadTarget.getInputStream();
      final Comparer comparer = new Comparer(sourceStream)) {
      
      comparer.add(targetStream);

      final Path resultPath = Paths.get("/Path/To/Save/Result/Document.pdf");
      try (OutputStream outputStream = new BufferedOutputStream(Files.newOutputStream(resultPath))) {
         comparer.compare(outputStream);
         System.out.println(resultPath);
      }
   }
}
```

In output console you will see path to the result document.

#### Saving the result Document into Dropbox

Below you can see, how to compare documents directly from Dropbox with uploading the result document into Dropbox without saving it locally. After that, you can open Dropbox in web browser and find the result document.

```java
   // Comparing files from Dropbox saving the result back to Dropbox
try (final DbxDownloader<FileMetadata> downloadSource = client.files().download("/source.pdf");
   final DbxDownloader<FileMetadata> downloadTarget = client.files().download("/target.pdf")) {
   try (final InputStream sourceStream = downloadSource.getInputStream();
      final InputStream targetStream = downloadTarget.getInputStream();
      final Comparer comparer = new Comparer(sourceStream)) {
      
      comparer.add(targetStream);
      
      try (final UploadUploader resultUploader = client.files().upload("/result.pdf")) {
         try (OutputStream outputStream = resultUploader.getOutputStream()) {
            comparer.compare(outputStream);
         }
         final FileMetadata fileMetadata = resultUploader.finish();
         System.out.println(fileMetadata.getPathLower());
      }
   }
}
```
In output console you will see path of the uploaded document. 

### Get a Free API License

Most of the settings, for example generating summary page, sensitivity of comparison and so on are available only with license. You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) in order to use the API without evaluation limitations.

### Conclusion

In this article was shown the way to use Dropbox API as a source of documents for [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) library that you can use in your own project. There are samples of using Dropbox API inside Spring and Dropwizard applications on [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). They are available for modification and using as a core of your own application for comparing photos, Excel, Word, code files, PowerPoint Presentations and other [supported file formats](/comparison/java/supported-document-formats/).

For more details, options, and examples, you can go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Reach us [on the forum](https://forum.groupdocs.com/) for your queries.

### See also

* How to [compare documents](/comparison/java/how-to-compare-documents-in-the-easiest-way) in the easiest way
* How to [use comparison tool](/comparison/java/how-to-use-ktor-comparison-sample) with Ktor Framework
* How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
* How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
* How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
* How to [use Google Drive API as files source](/comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api) for comparing documents in Java or Kotlin