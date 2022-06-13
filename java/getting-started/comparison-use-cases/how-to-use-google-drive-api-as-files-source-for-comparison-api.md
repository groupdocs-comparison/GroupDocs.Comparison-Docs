---
id: how-to-use-google-drive-api-as-files-source-for-comparison-api
url: comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api
title: How to use Google Drive API as files source for comparing documents
weight: 17
description: "The article describes the way to use Google Drive API as files source for GroupDocs Comparison API"
keywords: Compare documents, Google Drive API, Compare files from Google Drive, Comparison Tool with Java and Google Drive API
productName: GroupDocs.Comparison for Java
hideChildren: False
structuredData:
    showOrganization: True
    application:
        name:  PowerPoint, Image and AutoCad comparer
        description: The product allows to compare PowerPoint, Image and AutoCad files
        productCode: comparison
        productPlatform: java
    howTo:
        name:  How to use Google Drive API to spot differences of files, images or documents
        description: Learn how to use Google Drive API to spot differences of files, images or documents in Java or Kotlin project
        steps:
        - name: Configuring Google API
          text: Description of steps required to configure Google API
        - name: Configuring project to use Google Drive API with Comparison API
          text: All required configurations to use Google Drive API and Comparison API in the project
        - name: Creating Google Drive API objects
          text: Creating Service object to work with Google Drive API
        - name: Get list of files using Google Drive API
          text: Connect to Google Drive API and load list of files stored in it
        - name: Comparing Documents directly from Google Drive
          text: Compare documents which are stored in Google Drive account
---
These days Cloud services are very popular. It means that lots of people use them to store documents, photos and other files. In this situation you may need opportunity to compare files directly from Google Drive, without a need to download and save them locally. You can easily do it combining [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) together with Google Drive API.

### Configuring Google API

In order to use Google API you must have Google account. Here we will not describe how to register it. You can find out required steps on Google documentation page. Nevertheless, below are steps, needed to use Google Drive API in your project.

#### Creating Google Cloud Platform project and activating Drive API

1. Open [Google Cloud Platform Dashboard](https://console.cloud.google.com/apis/dashboard)
2. Click `Select a project` to open list of projects

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_1.png)

3. In order to create a project, click `NEW PROJECT`

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_2.png)

4. Enter project name and click `Create`

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_3.png)

5. Click `Enable APIs and services` to enable Google Drive API

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_4.png)

6. Find `Google Drive API`, select it and click `Enable` on the opened page

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_5.png)

#### Creating Consent Screen

1. Open [Credentials](https://console.cloud.google.com/apis/credentials) page and check that selected project is correct
2. Click `Create Credentials` and select `OAuth client ID`

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_6.png)

3. Click `Configure Consent Screen` button
4. Select `User Type` and click `Create`

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_7.png)

5. Fill `App information` and click `Save and continue`
6. Click `Add or remove scopes` to configure credential scopes.

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_8.png)

7. On the `Update selected scopes` screen check needed scopes. You can use filters to search scopes. After selecting all needed scopes, click `Update` button

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_9.png)

8. Click `Save and continue` to go to the next step
9. Add users using `Add users` button and click `Save and continue`
10. Click `Back to dashboard` to finish configuration

#### Creating Google Drive API credentials

1. Open [Credentials](https://console.cloud.google.com/apis/credentials) page and check that selected project is correct
2. Click `Create Credentials` and select `OAuth client ID`

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_6.png)

3. Select application type as `Desktop app`, enter its name and click `Create`

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_10.png)

4. Now, copy and save your `Client ID`, `Client secret` and of course download and save JSON file, that will be used to access Google Drive API

   ![](comparison/java/images/how-to-use-google-drive-api-as-files-source-for-comparison-api_11.png)

### Configuring project to use Google Drive API with Comparison API

To use Google Drive API as a file storage of Comparison API you need to add some libraries and repository to the project.

<details open><summary>Connect GroupDocs repository</summary><blockquote>
<details open><summary>Maven</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/9de00b81ae5dd326fc85fecb5c1220a6.js"></script>

</details>
<details><summary>Gradle</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/15f77ae825f310acd9cad555dcea0019.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/ad7ad48d4e7f9f60e858c7ba546f3745.js"></script>

</details>
</blockquote></details>

<details open><summary>Libraries</summary><blockquote>
<details open><summary>Maven</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/513c0cf2cf6ec736df038122fe7389a3.js"></script>

</details>
<details><summary>Gradle</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/7af8c044d34a45f5858667bd3b8a05c8.js"></script>

</details>
<details><summary>Kotlin</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/22abc7b8e5548ad0f240b604f7092516.js"></script>

</details>
</blockquote></details>

### Creating Google Drive API objects

First, we need JSON factory, that will be used for communication with Google server

<script src="https://gist.github.com/groupdocs-comparison-gists/0853a71cd95b079fe683eac607e7fa3a.js"></script>

Secondly, we need to create transport object

<script src="https://gist.github.com/groupdocs-comparison-gists/844c3077a831fc8dee4485ef8302c79d.js"></script>

After that we must create client secrets object. It is the place, where we will use json file that was downloaded after creating API credentials

<script src="https://gist.github.com/groupdocs-comparison-gists/139ac242d9a5af46ac70de236cfa9402.js"></script>

Next step is to create authorization flow that will be used for authorization request. A little details about options:
   * `DriveScopes.DRIVE` - is a scope that was enabled while creating API credentials
   * `"/Path/To/Directory/To/Save/Tokens"` - The tokens directory is needed to save authorization tokens. You can remove this line, but in this way Google API will ask for authorization each time.

<script src="https://gist.github.com/groupdocs-comparison-gists/a4ee3fdba7423db24797967851f16b56.js"></script>

Now we will request authorization. It will open Google authorization page in default web browser, where you can grand access to the application. More information can be found on Google Documentation page.

<script src="https://gist.github.com/groupdocs-comparison-gists/cf913a2f12e3f2233b5f4b9e8cc98654.js"></script>

Finally, we build an object that will be used to access Google Drive files

<script src="https://gist.github.com/groupdocs-comparison-gists/c767f20a31dede6afd5412013908016d.js"></script>

### Get list of files using Google Drive API

To print list of files which are on your Google Drive, execute next code

<script src="https://gist.github.com/groupdocs-comparison-gists/362c635862024863ac606182e3e62a3c.js"></script>

Here is an example of the output:

```shell
- 1hRgws-lLWMlloSZioaVpKJGKt687KHL7  GroupDocs_Demo.pdf (51911 bytes)
- 22k0Uyt_bBoN96LJhL3iKlKHlhLKjhw2O  GroupDocs_Demo_Word.docx (12044 bytes)
- 33Kk0yt_bBoN96LJhL3iKlKHlhLKjhw2O  GroupDocs_Demo_Word.docx (12044 bytes)
- 80UMm8vRQ637H7hJHkjHKh7JKJL96tm56  GroupDocs_Demo_Image.png (78398 bytes)
- 1qwRjo4Nu0LKHlLhlLKjlk798761tuFJP  GroupDocs_Demo_Photo.jpg (3186063 bytes)
```

In the output each line is one file. It's ID, name and size. You can use this information to show files to a user. There are lots on data, that can be got for each file. More information can be found on Google Documentation page. For code samples below we will use two of IDs above. **Keep in mind**, your files will have other IDs, so running code below don't forget to change IDs.

### Comparing Documents directly from Google Drive

[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java/) is a modern, powerful and flexible library that can be used in any Java, Kotlin or other Java compatible projects. You can use it to compare Word, Excel, Presentation documents, photos, images, diagrams, code files, and other [supported file formats](/comparison/java/supported-document-formats/). Comparison library has lots of settings, as generating summary page, accepting/rejecting changes, comparing more than two documents (multi comparing), generating document preview images, changing comparison sensitivity and changes highlighting styles. More information about settings can be found in [the documentation](/comparison/java/getting-started/). On our [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) you can find samples of integrating Comparison library with different frameworks, as Spring, Dropwizard, Kotlin Compose Desktop and so on.

#### Saving Result Document Locally

You can easily compare dwo documents, which are located on your Google Drive saving result document locally or saving it into Java stream and use it whatever you want. **Keep in mind** that `1ZSDTUZArzuwYab0GUbXEoSX_b9kt2mk0` and `1mKk0yt_bBoN9K9mm-3iGXLxfTzkrdw2O` are IDs got in the previous steps. For you, they will be different.

<script src="https://gist.github.com/groupdocs-comparison-gists/0dd5de335fee2e1f78dc8c4c82299010.js"></script>

In output console you will see path to the result document.

#### Saving Result Document to Google Drive

Below you can see the code that will compare documents directly from Google Drive. Output files will be uploaded to Google Drive without saving locally anything. After that, you can open Google Drive page in web browser and see result document, for example, using Google Docs.

<script src="https://gist.github.com/groupdocs-comparison-gists/d067df3bf323e06d468952af2b7b335b.js"></script>

In output console you will see ID, name and size of uploaded document. 

### Get a Free API License

Lots of settings, as summary page, sensitivity of comparison and so on are available only with license. You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) in order to use the API without the evaluation limitations.

### Conclusion

Reading this article you learned the way to use Google Drive API as a file storage for [GroupDocs.Comparison](https://products.groupdocs.com/comparison/) library that gives you lots of opportunities. You can find samples of using Google Drive API inside Spring and Dropwizard applications on [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) which you can modify and use as a core of your own application for comparing photos, code files, PowerPoint, Excel, Word and other [supported file formats](/comparison/java/supported-document-formats/).

For more details, options, and examples, you can go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Reach us [on the forum](https://forum.groupdocs.com/) for your queries.

### See also

* How to [compare documents](/comparison/java/how-to-compare-documents-in-the-easiest-way) in the easiest way
* How to [compare files](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java or Kotlin
* How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
* How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
* How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
* How to [use Dropbox API as files source](/comparison/java/how-to-use-dropbox-api-as-files-source-for-comparison-api) for comparing documents in Java or Kotlin