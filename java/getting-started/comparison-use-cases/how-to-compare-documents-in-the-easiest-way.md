---
id: how-to-compare-documents-in-the-easiest-way
url: comparison/java/how-to-compare-documents-in-the-easiest-way
title: How to compare documents in the easiest way
weight: 16
description: "The article is about the easiest way to use GroupDocs.Comparison API to compare documents"
keywords: Compare documents, Spring Comparison API, Dropwizard Comparison API, Comparison Tool with Docker
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Diff checker
    description: The product allows to check diff of files
    productCode: comparison
    productPlatform: java
  howTo:
    name: How to check if two documents are identical
    description: Learn how to use diff checker in Java or Kotlin project
    steps:
      - name: Load source document
        text: Create an instance of Comparer class passing source document as a constructor parameter
      - name: Load target documents
        text: Add one or more target documents to compare them with source one
      - name: Compare source and target documents
        text: Run comparison process passing path where the result of the comparison will be saved
---

Sometimes there is a need to compare two Pdf, Word or Excel documents as fast, as possible, without installing lots of soft. In case you have Docker installed, the easiest way is to use it together with [GroupDocs.Comparison API](https://products.groupdocs.com/comparison)

### Variety of GroupDocs.Comparison samples

To provide our clients more facilities, we published different configurations of Comparison samples. You can choose, which fits you best for your needs. To find all of them and get the latest version, please, visit our [Docker Hub page](https://hub.docker.com/r/groupdocs/comparison)

Here are just a few of configurations:

1. `groupdocs/comparison:<VERSION>-java-openjdk8-bullseye-spring` - based on OpenJDK 8 and Debian Bullseye
2. `groupdocs/comparison:<VERSION>-java-openjdk11-bullseye-spring` - based on OpenJDK 11 and Debian Bullseye
3. `groupdocs/comparison:<VERSION>-java-openjdk18-bullseye-spring` - based on OpenJDK 18 and Debian Bullseye
4. `groupdocs/comparison:<VERSION>-java-openjdk8-bullseye-dropwizard` - based on OpenJDK 8 and Debian Bullseye
5. `groupdocs/comparison:<VERSION>-java-openjdk11-bullseye-dropwizard` - based on OpenJDK 11 and Debian Bullseye
6. `groupdocs/comparison:<VERSION>-java-openjdk18-bullseye-dropwizard` - based on OpenJDK 18 and Debian Bullseye

Where `<VERSION>` should be replaced with version of Comparison you want to use.

Note: we are going to add new configurations the nearest future. Some of them are already in work, for example, using Ktor and Micronaut. Feel free to check actual configurations on the [Docker Hub page](https://hub.docker.com/r/groupdocs/comparison)

### System Requirements

There are no any requirements to use GroupDocs.Comparer API. All you need is to have Docker installed, Web browser and Internet connection.

### Running GroupDocs.Comparer using Docker

#### Run using Command Line

The easiest way to run [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) application is to use command line. Moreover, with this command you can run the application on any OS, as Windows, Linux or Mac.

Here is command to run the comparer:

<script src="https://gist.github.com/groupdocs-comparison-gists/4958fa72f02e5d83324fc63b326e0609.js"></script>

That is all. Just wait while Docker download and run the application. To access comparer interface open [http://localhost:8080/comparison/](http://localhost:8080/comparison/) in favourite browser

![](/comparison/java/images/how-to-compare-documents-in-the-easiest-way.png)

With the UI you can choose any two documents which are in the list of [supported file formats](/comparison/java/supported-document-formats/) and compare them. It is possible to upload documents from local PC as well as by URL. There are available two small sample documents by default, you can use them to check that everything works correctly. Accessing the container through terminal, you can find application files by path `/home/groupdocs/app/`. There are also default `DocumentSamples` and `Licenses` directories.

#### Run using Portainer

Portainer is a platform that provides web based UI for Docker. You can read how to install it on official Portainer website.

To run [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) application follow next steps:

1. Open Portainer interface
2. Click `Containers` on the left of the screen
3. Click `Add container` button
4. Past `groupdocs/comparison:22.3-java-openjdk8-bullseye-spring` to `Image` field (actual version as well as other available configurations you can find on our [Docker Hub page](https://hub.docker.com/r/groupdocs/comparison/tags))
5. Find `Manual network port publishing` and click `publish a new network port` near it
6. Enter `8080` into `host` text field and `8080` into `container` text field (`host` is the port that you will use to access comparer in web browser. You can past `80` as host port, in this way the application will be available in web browser without entering any port - [http://localhost/comparison/](http://localhost/comparison/))
7. Click button `Deploy the container`
8. Wait about a minute while it is deploying
9. To access comparer interface open [http://localhost:8080/comparison/](http://localhost:8080/comparison/) in favourite web browser

#### Manage comparer using Docker Desktop

At the moment there is no way to deploy container using Docker Desktop. Nevertheless, you can still manage containers which are already run. For example, run, stop, restart, show logs, access container terminal and so on.

### GroupDocs.Comparer Configuration

[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) provides lots of options to configure comparison process. Generating summary page, configuring style of the result document (text and highlighting colors, font weights, underlining and so on), getting text of each change and it's coordinates in the document, configuring sensitivity of comparison, accepting/rejecting changes and [much more](https://docs.groupdocs.com/comparison/java/groupdocs-comparison-overview/). As for sample applications, that are available on our [Docker Hub page](https://hub.docker.com/r/groupdocs/comparison/), there are just minimum options to give you an opportunity to familiarize with basic comparison functionality. All those samples are free and available on our [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). Feel free to modify and use them.

Nevertheless, there are a few options which you can change to configure Comparison sample running it with Docker. You can use some of predefined environment variables. As an example, if you want to disable uploading, pass environment variable `UPLOAD_ON` with value `false` in command that runs container. In this way the command will be like:

<script src="https://gist.github.com/groupdocs-comparison-gists/8120ee53c065f2732ded283a427bf87d.js"></script>

There are next predefined variables:

- `LIC_PATH` - path to directory with license file
- `FILES_DIR` - path to the directory with uploaded files
- `RESULT_DIR` - path to the directory with result files
- `DOWNLOAD_ON` - enables/disables download button in Comparison application UI
- `UPLOAD_ON` - enables/disables uploading files _(the upload button is on the left of the open document dialog)_
- `BROWSE_ON` - enables/disables document browse dialog
- `PRINT_ON` - enables/disables button to print documents
- `RIGHTCLICK_ON` - enables/disables right mouse click
- `HOST_ADDRESS` - host name or ip for server instance

_Note: Keep in mind, `LIC_PATH`, `FILES_DIR` and `RESULT_DIR` paths are point to the folders **inside** Docker container_

#### Keeping data between runs

You may need to save files between application runs. To do it you should use Docker's volumes, for example: add parameter `-v groupdocs_comparison_volume:/home/groupdocs/app/MyDocumentSamples` to create new volume and pass `/home/groupdocs/app/MyDocumentSamples` as a value of environment variable `FILES_DIR`. In this way command will be like:

<script src="https://gist.github.com/groupdocs-comparison-gists/e492c0c7d27267ff506ecd3eaffcd4de.js"></script>

- Parameter `-v groupdocs_comparison_volume:/home/groupdocs/app/MyDocumentSamples` configures Docker to create new volume with name `groupdocs_comparison_volume` and to bind it into container as a directory `/home/groupdocs/app/MyDocumentSamples`. In this way, any access to `MyDocumentSamples` inside the container will actually make changes inside the volume. Stopping container that was run with an option `--rm` or manual deleting the container, volume and files inside it will not be deleted. It is easy to run new container attaching the volume, to access files again.
  Here is a little details about the command:
- Option `--env FILES_DIR=/home/groupdocs/app/MyDocumentSamples` configures Comparison application to use `/home/groupdocs/app/MyDocumentSamples` directory inside Docker container as a folder to store files. It can be changed to any other path, physically this directory does not exist in Docker image

_Note: `groupdocs_comparison_volume` is just a name of the volume. It can be used for deleting the volume. You can easily change it._

### Get a Free API License

You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) in order to use the API without the evaluation limitations.

### Conclusion

In this article was described the easiest way to run [GroupDocs.Comparison](https://products.groupdocs.com/comparison/) samples using Docker. There are different configurations of comparison applications are available on our [Docker Hub page](https://hub.docker.com/r/groupdocs/comparison/tags) so that you can choose the best one for your needs. All these samples are available on [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java), so you can modify and use them as a core of your own application for comparing photos, code files, PowerPoint, Excel, Word and other [supported file formats](/comparison/java/supported-document-formats/). Now it is easy to build your own comparer application or use comparison features inside already exist Java applications with [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java).

For more details, options, and examples, you can go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Reach us [on the forum](https://forum.groupdocs.com/) for your queries.

### See also

- How to [compare files](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java or Kotlin
- How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
- How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
- How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
- How to [compare any files](/comparison/java/how-to-compare-any-files-using-compose-desktop) using Compose Desktop
- How to [run Dropwizard Comparison sample](comparison/java/how-to-run-dropwizard-comparison-sample-using-docker) as Docker container
