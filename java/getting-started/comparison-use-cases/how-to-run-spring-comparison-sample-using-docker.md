---
id: how-to-run-spring-comparison-sample-using-docker
url: comparison/java/how-to-run-spring-comparison-sample-using-docker
title: How to run Spring Comparison sample using Docker
weight: 14
description: "The article is about running Spring Comparison sample using Docker to get fast ready-to-use application to compare files"
keywords: Compare photos, Spring Comparison Tool, Spring and Docker, Comparison API
productName: GroupDocs.Comparison for Java
hideChildren: False
---

You need just a few commands to run [Spring Comparison sample](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/master/Demos/Spring) as a Docker container. After reading this article you will have web application that can compare any documents and highlight differences 

### Application to Compare Documents 

Spring Comparison sample is an application, that was created by using Spring Framework together with [GroupDocs.Comparison API for Java](https://products.groupdocs.com/comparison/java) functionality. Tt is just a sample, but it is still fully functional and can be used to compare any [supported file formats](/comparison/java/supported-document-formats/). Furthermore, sources of the application are available [on GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/master/Demos/Spring), so that you can easily add some functions or change the application in any way you want.

### System Requirements

To run the sample as a Docker container you will need to have installed Docker itself and download Comparison application:
1. Go to official Docker page, download installer depending on your OS
2. Install Docker using instructions on the official Docker page
3. Open [Comparison application](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) GitHub page and download sample sources:
   1. Click on green button `Code` on the top right side of the page
   2. Click `Download ZIP` link
   3. After downloading, extract the archive to any directory you like

### Common Advantages of using Comparison sample inside Docker container

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison) is a modern solution to compare lots of [supported file formats](/comparison/java/supported-document-formats/). It will help you to compare files, extract source/target and result texts, preview changes, accept or reject them, generate summary, generate preview of file pages and [much more](https://docs.groupdocs.com/comparison/java/groupdocs-comparison-overview/). Simultaneously, Docker is a modern software that gives you an opportunity to build and/or run applications without having installed environment, that is required to it. As for Spring Comparison application, you don't need to install and configure Java, Maven and other Java things. 

### Launching Comparison Spring sample

In order to launch the sample, firstly build Docker image. It must be done only once. After it will be built, you can use the image to run Docker container any times

#### Configuration of Comparison application

There are lots of options to be configured in the Comparison application. Some of them are available to be changed running a Docker container, but others can be only changed before creating Docker image (actually, you can update sample to make any option to be configurable after Docker image was created, it is not difficult).
To change the configuration of the application you need to edit `configuration.yml` file. All options are commented in it.

#### Building Docker Image of the sample

To set GroupDocs license:

1. Go to `\Demos\Spring\` in sample folder
2. Put license file into `Licenses` directory

In case want any files to be inside Comparison application by default, follow next steps:

1. Go to `\Demos\Spring\` in sample folder
2. Put files into `DocumentSamples` directory

_Note: of course you can upload files after running the application using Comparison UI_

To build Docker image for the sample and install it to local Docker instance, do next:

1. Go to `\Demos\Spring\` in sample folder
2. Open console window in this directory
3. Run next command to build an image

   ```shell
       docker build -t groupdocs_comparison_spring_sample ./
    ```

That's actually all. The image is already built and added to local Docker's list of images.

_Note: `groupdocs_comparison_spring_sample` in the command above is just a name of the image that will be built. You can change it as you want, but don't forget it, because it will be used to run the application_

#### Running application using prebuilt Image

To run Comparison Spring application having prebuilt Docker image, fallow next steps:

1. Go to `\Demos\Spring\` in sample folder
2. Open console window in this directory
3. Run next command to create container of the image and run application
    ```shell
       docker run -p 8080:8080 --name my-comparer --rm groupdocs_comparison_spring_sample
    ```
   
After that, just open link [http://localhost:8080/comparison](http://localhost:8080/comparison) in any web browser to see the Comparison application

![](comparison/java/images/how-to-run-spring-comparison-sample-using-docker.png)

A little details about the command:
* `my-comparer` is a name of Docker container, that can be used to stop docker container with the application. It can be changed as you want
* `8080:8080` means that the application inside Docker container is using port `8080` and Docker binds it to port `8080` outside the container, thanks to what you can use it to access the application in your web browser
* flag `--rm` says Docker that the container should be deleted automatically after it will be stopped. The flag can be omitted if you need to keep container after it will be stopped
* `groupdocs_comparison_spring_sample` is a name of an image that we built before

To stop the container just run command `docker stop my-comparer` in command line

### Configuring Comparison API

To have opportunity to configure application, it is possible to use some of predefined environment variables. As an example, if you want to hide download button, just pass environment variable `DOWNLOAD_ON` with value `false` in command that run container. In this way the command will be like:

```shell
docker run -p 8080:8080 --name my-comparer --env DOWNLOAD_ON=false --rm groupdocs_comparison_spring_sample
```

There are next predefined variables:
* `LIC_PATH` - path to directory with license file
* `DOWNLOAD_ON` - enables/disables download button in Comparison application UI
* `UPLOAD_ON` - enables/disables button to upload files _(the button is on the left of the open document dialog)_
* `PRINT_ON` - enables/disables button to print documents
* `BROWSE_ON` - enables/disables document browse dialog
* `FILES_DIR` - path to the directory with uploaded files
* `RESULT_DIR` - path to the directory with result files
* `HOST_ADDRESS` - host name or ip for server instance

_Note: Keep in mind, `LIC_PATH`, `FILES_DIR` and `RESULT_DIR` paths are point to the folders **inside** Docker container_

#### Keeping data between runs

It is usual request about keeping files between application runs. To do it you just need to use Docker's volumes. Here is an example: add parameter `-v groupdocs_comparison_spring_volume:/home/groupdocs/app/MyDocumentSamples` together with passing environment variable `FILES_DIR` to create new volume and pass it as a directory with files. In this way command be like:

```shell
docker run -p 8080:8080 --name my-comparer --env FILES_DIR=/home/groupdocs/app/MyDocumentSamples -v groupdocs_comparison_spring_volume:/home/groupdocs/app/MyDocumentSamples --rm groupdocs_comparison_spring_sample
```

Here is a little details about the command:
* Option `--env FILES_DIR=/home/groupdocs/app/MyDocumentSamples` configures Comparison application to use directory `/home/groupdocs/app/MyDocumentSamples` inside Docker container as folder to keep files. It can be changed to any other path, physically this directory does not exist in Docker image
* Option `-v groupdocs_comparison_spring_volume:/home/groupdocs/app/MyDocumentSamples` configures Docker to create new volume with name `groupdocs_comparison_spring_volume` and to bind it into container as a directory `/home/groupdocs/app/MyDocumentSamples`, so that any access to `MyDocumentSamples` inside the container will actually make changes inside the volume. After that, stopping container that was run with an option `--rm` or in case of manual deleting the container, volume and files inside it will not be deleted. It is easy to run new container attaching the volume, so that files will be available again.
_Note: `groupdocs_comparison_spring_volume` is just a name of the volume. It can be used for deleting the volume. You can change the name on your taste:)_

### Get a Free API License

You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) in order to use the API without the evaluation limitations.

### Conclusion

Going through the article, you learned how to run [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) Spring sample. It can be used as a core of fabulous application for comparing photos, code files, Word, Excel, PowerPoint and other documents. Changes are highlighted on the result document. Now it is easy to build your own comparer app or use comparison features within your Java applications by using [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java).

For more details, options, and examples, you can go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Reach us [on the forum](https://forum.groupdocs.com/) for your queries.

### See also

* How to [compare files](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java or Kotlin
* How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
* How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
* How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
* How to [compare any files](/comparison/java/how-to-compare-any-files-using-compose-desktop) using Compose Desktop
* How to [run Dropwizard Comparison sample](comparison/java/how-to-run-dropwizard-comparison-sample-using-docker) as Docker container