---
id: how-to-run-dropwizard-comparison-sample-using-docker
url: comparison/java/how-to-run-dropwizard-comparison-sample-using-docker
title: How to run Dropwizard Comparison sample using Docker
weight: 13
description: "The article is about running Dropwizard Comparison sample using Docker to get fast ready-to-use application to compare files"
keywords: Compare photos, Dropwizard Comparison Tool, Dropwizard and Docker, Comparison API
productName: GroupDocs.Comparison for Java
hideChildren: False
structuredData:
    showOrganization: True
    application:
        name: AutoCad, PowerPoint, Word comparer
        description: The product allows to compare AutoCad, PowerPoint, Word and much more types of files
        productCode: comparison
        productPlatform: java
    howTo:
        name: How to run Dropwizard project in Docker container
        description: Learn how to run and configure Dropwizard project in Docker container
        steps:
        - name: Dropwizard Comparison Application
          text: What is Dropwizard Comparison sample application and why do you need it
        - name: System Requirements
          text: Which tools and files you need to run the application in Docker container
        - name: Launching Dropwizard Comparison sample
          text: Configuring, building and running Comparison sample application using Docker
        - name: Configuring Comparison API
          text: Configuration the application to customize it according to your needs
---

Reading this article you will understand how to run [Dropwizard Comparison sample](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/master/Demos/Dropwizard) just in few commands using Docker. After going through this, you will have web application to compare any documents and highlight the identified differences

### Dropwizard Comparison Application

Dropwizard Comparison sample is a sample application, that is created with using Dropwizard Framework to familiarize with [GroupDocs.Comparison API for Java](https://products.groupdocs.com/comparison/java) functionality. Despite the fact that it is just a sample, the application is fully functional and can be used to compare any [supported file formats](/comparison/java/supported-document-formats/). Moreover, thanks to the fact, that sources of the application are available [on GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/master/Demos/Dropwizard), you can easily add needed change the application in any way or add some functions.

### System Requirements

To run the sample using Docker you will need to install Docker itself and download Comparison application:
1. Go to official Docker page and download installer depending on OS
2. Install Docker according instructions on official Docker page
3. Open HitHub page with [Comparison application](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) and download it's  sources:
   1. Click on green button `Code` on the top right side of the page
   2. Click `Download ZIP` link
   3. After download finished, extract the archive to any directory you like

### Launching Dropwizard Comparison sample

In order to launch the sample you firstly need to build Docker image. It must be done only once and after that you can use the image to run Docker container whenever you want

#### Configuring Comparison application

Comparison application has lots of options to be configured. Some of them are available to be changed during each run, but others can be only changed before creating Docker image (in fact, you can update sample by your own to make any option to be configurable after Docker image was created).
To change the application configuration you just need to edit `configuration.yml` file

#### Building Docker Image of the sample

If want to have any files to be inside Comparison application by default, follow next steps:

1. Go to `\Demos\Dropwizard\` in sample folder
2. Put files into `DocumentSamples` directory

_Note: of course you can upload files after running the application using it's interface_

To set GroupDocs license:

1. Go to `\Demos\Dropwizard\` in sample folder
2. Put license file into `Licenses` directory

To create Docker image for the sample:

1. Go to `\Demos\Dropwizard\` in sample folder
2. Open console in this directory
3. Run next command to build an image
    ```shell
       docker build -t groupdocs_comparison_dropwizard_sample ./
    ```

That's actually all. The image is built and added to Docker's list of images.

_Note: `groupdocs_comparison_dropwizard_sample` in the command is just a name of the image that will be created. You can use any name you want, but don't forget it, as it will be used to run the application_

#### Running application using prebuilt Image

To run Comparison Dropwizard application you should fallow next steps:

1. Go to `\Demos\Dropwizard\` in sample folder
2. Open console in this directory
3. Run next command to run a container with Comparison application
    ```shell
       docker run -p 8080:8080 --name my-comparer --rm groupdocs_comparison_dropwizard_sample
    ```
   
After that, just open link [http://localhost:8080/comparison](http://localhost:8080/comparison) in your favourite browser to see Comparison application

![](comparison/java/images/how-to-run-dropwizard-comparison-sample-using-docker.png)

A little details about the command:
* `my-comparer` is a name of Docker container, that you can use to stop the application. It can be changed to any other name
* `8080:8080` means that the application is using port `8080` inside Docker container and Docker connects it to port `8080` outside the container, so that you can use it to access the application in your browser
* flag `--rm` means that the container will be deleted automatically by Docker after it will be stopped. The flag can be omitted to keep container after it wil be stopped
* `groupdocs_comparison_dropwizard_sample` is a name of an image that we created

To stop the container just run command `docker stop my-comparer`

### Configuring Comparison API

In order to configure application you can use some of predefined environment variables. For example, if you want to disable possibility to download result document, just pass environment variable `DOWNLOAD_ON` with value `false` with command of starting container. In this way the command will look like:

```shell
docker run -p 8080:8080 --name my-comparer --env DOWNLOAD_ON=false --rm groupdocs_comparison_dropwizard_sample
```

There are next predefined variables:
* `LIC_PATH` - path to directory with license file
* `DOWNLOAD_ON` - enables/disables result file download button in Comparison application UI
* `UPLOAD_ON` - enables/disables button to upload files which can be used for comparing _(the button is on the left of the open document dialog)_
* `PRINT_ON` - enables/disables button to print documents
* `FILES_DIR` - path to the directory that will be used to store uploaded files
* `RESULT_DIR` - path to the directory that will be used to save result files of comparison documents

_Note: Keep in mind, `LIC_PATH`, `FILES_DIR` and `RESULT_DIR` paths are point to the folders **inside** Docker container_

#### Keeping data between runs

There is a common need to keep files between application runs. To do it you need to use Docker's volumes. For example, you can add parameter `-v groupdocs_comparison_dropwizard_volume:/home/groupdocs/app/MyDocumentSamples` together with passing environment variable `FILES_DIR` to create new volume and pass it as directory with files. In this way command be like:

```shell
docker run -p 8080:8080 --name my-comparer --env FILES_DIR=/home/groupdocs/app/MyDocumentSamples -v groupdocs_comparison_dropwizard_volume:/home/groupdocs/app/MyDocumentSamples --rm groupdocs_comparison_dropwizard_sample
```

A little details about the command:
* Option `--env FILES_DIR=/home/groupdocs/app/MyDocumentSamples` configures Comparison application to use directory `/home/groupdocs/app/MyDocumentSamples` inside Docker container as folder to keep files. You can change the path to any other, physically this directory does not exists in Docker image
* Option `-v groupdocs_comparison_dropwizard_volume:/home/groupdocs/app/MyDocumentSamples` says Docker to create new volume with name `groupdocs_comparison_dropwizard_volume` and to map it into container as a directory `/home/groupdocs/app/MyDocumentSamples`. In this way, any access inside the container to `MyDocumentSamples` will actually make changes inside the volume. So that stopping container that was run with option `--rm` or manual deleting the container will not have any effect on volume and files inside it. You can easily run new container with attaching the volume to it and files will be available again.
_Note: `groupdocs_comparison_dropwizard_volume` is just name of the volume that can be used, for example, for deleting the volume. You can change it on your taste:)_

### Advantages of using Comparison sample with Docker

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison) is a modern library that has lots of [supported file formats](/comparison/java/supported-document-formats/) and can be used to compare files, preview changes, accept or reject them, extract source/target and result texts, generate preview of file, generate summary page and [much more](https://docs.groupdocs.com/comparison/java/groupdocs-comparison-overview/). Tn the same time, Docker is a modern technology that gives you an opportunity to build and/or run applications without having installed environment required to it. Connected to Dropwizard Comparison application, you don't need to have Java, Maven and other things installed and configured.

### Get a Free API License

You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) in order to use the API without the evaluation limitations.

### Conclusion

Reading this article, we learned how to run [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) Dropwizard sample that can be used as a core of incredible application for comparing photos, Word, Excel, PowerPoint and other documents. There are highlighted changes on the result document. Now you can build your own comparer app or use these features within your Java applications by using [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java).

For more details, options, and examples, you can go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Reach us [on the forum](https://forum.groupdocs.com/) for your queries.

### See also

* How to [compare files](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java or Kotlin
* How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
* How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
* How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
* How to [compare any files](/comparison/java/how-to-compare-any-files-using-compose-desktop) using Compose Desktop
* How to [run Spring Comparison sample](comparison/java/how-to-run-spring-comparison-sample-using-docker) as Docker container