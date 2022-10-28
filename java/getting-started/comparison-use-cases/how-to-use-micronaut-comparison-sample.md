---
id: how-to-use-micronaut-comparison-sample
url: comparison/java/how-to-use-micronaut-comparison-sample
title: How to use Micronaut comparison sample
weight: 30
description: "The article describes GroupDocs Comparison sample that was created using Micronaut Framework"
keywords: Micronaut Framework, Compare documents, Files comparison, Comparison library for Micronaut Framework
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Word, Pdf, Excel comparison library
    description: The product allows to compare Word, Pdf and Excel files
    productCode: comparison
    productPlatform: java
  howTo:
    name: How to use Micronaut Framework to compare files
    description: Learn how to use Micronaut Framework to compare documents
    steps:
      - name: Used technologies
        text: Description of technologies which are be used in the application
      - name: Application architecture description
        text: Short description of application architecture
      - name: Building and running the application
        text: Ways the application can be run using IDE or CLI
      - name: Key places inside the application
        text: Implementation of the most important parts in the application
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) is the most flexible, powerful and easy to use Java library that was created to develop document comparison applications in Java environment. Micronaut is a modern, jvm-based, full-stack framework for building modular, easily testable microservice and serverless applications. Combining them together you can easily develop powerful and modern Java based application for comparing Word and Pdf documents, Photos and Images, PowerPoint presentations, AutoCad drawings, XML, MSG, JSON, TXT files and much more [supported file formats](/comparison/java/supported-document-formats/). In the article you will read about sample comparison application, which sources are completely free and available on [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/a5e2a25/Demos/Micronaut)

### Used technologies

1. Kotlin - A modern programming language that makes developers happier. Fully compatible with Java libraries.
2. Micronaut - JVM-based framework for building lightweight, modular applications.
3. [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) - the most flexible and modern comparison library for Java, Kotlin and .NET
4. Thymeleaf - modern server-side Java template engine for both web and standalone environments.

### Application architecture description

- `config` - Classes which are used to map configuration of the application
- `manager` - Helpers, for example manager to work with files paths
- `model` - Requests and responses model classes
- `modules` - Controllers and their beans
- `usecase` - business logic

#### Extra files

In sources:

- `Application.kt` - entry point of the application
- `Defaults.kt` - properties which are used as default values for configuration options

In resources:

- `application.conf` - configuration of the application
- `logback.xml` - logging system configuration

### Building and running the application

#### Using IDE

Application entry point is in a file `Application.kt`. Function `main` must be run in order to start the application. It can be done with a help of any IDE.

#### Using command line

You can easily run the sample using CLI executing next command

<script src="https://gist.github.com/groupdocs-comparison-gists/6987202c524f6c430eae2669bad8c64b.js"></script>

The application will be run using gradle wrapper, that is in `gradle` directory. Open [http://localhost:8080/comparer](http://localhost:8080/comparison) in your favourite web browser to see the UI.

Creating distribution archive is as easy as running the application:

<script src="https://gist.github.com/groupdocs-comparison-gists/a57bf4fbc4e6aaeee637e5daf4fa5824.js"></script>

After that, go to `.\build\distributions\` directory and you will find next distribution files:

- comparison-micronaut-22.3.tar
- comparison-micronaut-22.3.zip

Both of them has `bin` directory with scripts to run the app and `lib` directory that contains all application libraries

### Key places inside the application

#### Controllers and beans

Inside `mudules` package are sub packages. Each of them handles single request from client. Lets review `compare` sub package as an example.

The package has two files:

1. `CompareController.kt` - it contains class, that caches request to `/compare` url

   <script src="https://gist.github.com/groupdocs-comparison-gists/ea8d8e0466e35d7e1c21b97f5b1a658b.js"></script>

   Goals of the class is to catch request, extract parameters, call method of a bean and return response object that was created by the bean

2. `CompareBean.kt` - it uses usecases and passed arguments to create response object.
   First thing the bean does is checking that request paths are inside allowed directories. The bean uses `PathManager` to check it

   <script src="https://gist.github.com/groupdocs-comparison-gists/80121384a48c0bd18adf82471ec06158.js"></script>

   The second thing is checking that requested files are supported by the sample. The bean uses special usecase: `AreFilesSupportedUseCase`

   <script src="https://gist.github.com/groupdocs-comparison-gists/d967ad8ff4850452d20be766fc80e540.js"></script>

   The third step is creating path to the file, in which the result document will be saved

   <script src="https://gist.github.com/groupdocs-comparison-gists/e5fbb26f52bd2a20e6ba7e918761bc60.js"></script>

   The sample uses temporary files to be more understandable. It is easy to modify the sample to use IO streams instead. Path to the temporary directory can be configured in `application.conf`. By default, system directory is used

   In the next step `CompareDocumentsUseCase` is used to compare source and target documents and to save result file. It returns list of changes, which will be sent to the client.

   <script src="https://gist.github.com/groupdocs-comparison-gists/8c38027c876bcdb257a410ed9ed295b6.js"></script>

   One more important step is to get input streams of pages in result document using `RetrieveLocalFilePagesStreamUseCase`. These pages will be displayed on the client side.

   <script src="https://gist.github.com/groupdocs-comparison-gists/3a9ae7912f345b02e45a2469287ffed6.js"></script>

   And the final step is mapping Comparison `ChangeInfo` objects, which represents each change in the document into response models to be send to the client.

#### Understanding usecases

Usecase is a class that has only one goal to do. Usecases must be easy for testing and must not have any state. In the sample, each usecase is annotated using `@Bean` annotation. It means that they will be injected into controllers and other beans with a help of embedded into Micronaut Framework mechanism. The same way will be resolved arguments of usecases constructors.

Lets overview `CompareDocumentsUseCase` as an example:

In the usecase operator `invoke` is overridden to make it possible to use usecase object like a function. The main goal of the usecase is to compare source and target documents saving the result document.

<script src="https://gist.github.com/groupdocs-comparison-gists/a73539b2fdb66f8cde9495beb47d5fc5.js"></script>

Parameters of the usecase are source document, target document and output stream. It compares documents using [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) library and saves the result to the provided stream. Optionally, it takes passwords for each document.

The Comparison library is used to compare documents in the sample. It is very easy to use, so you can compare any documents just in few lines of code:

1. Instantiate `Comparer` object passing source document path or stream.
Alternatively you can configure Comparer using `LoadOptions` to interpret the first argument as a source text for comparison process. Also it has property to pass directories with fonts, specific for the document. Optionally you can provide password for the source document with a special property of `LoadOptions` object. Comparer implements Java `Closeable` interface, so it is recommended to use try-with-resources working with it.

<script src="https://gist.github.com/groupdocs-comparison-gists/cded4b9f8a4f1fd1ec4ae1de61c3b15a.js"></script>

2. Using `add` method of comparer provide second document or text for comparing. To the method can be passed the same `LoadOptions` parameter with all its properties. Moreover, [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) supports multi-document comparison. In order to use it, just add more target documents using `add` method of the comparer.

<script src="https://gist.github.com/groupdocs-comparison-gists/180ae9b27854c4b11dde7854e6ead725.js"></script>

3. The last thing you need to do, is to call `compare` method to start comparing. It takes `CompareOptions` object as a second argument for configuring the process. Here are shown just a few capabilities of the library. In the code above, the comparer is configured to show deleted content, to detect styles changes and to calculate coordinates of each change. Much more options are available to be configured. For example, you can enable generating summary page, change comparison sensitivity level, disable some types of changes, configure styles that will be used to highlight changes and much more. Read about them [in the documentation](/comparison/java/getting-started/).
   Method `comparer.getChanges()` is used at the end of the `apply` block to get list of changes.

### Get a Free API License

Some of comparison capabilities, as sensitivity of comparison, generating summary page and so on, are available only with license. You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) to use the API without evaluation limitations.

### Free Online App

You can check comparison algorithm with a help of powerful free applications.
Try to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG, DWG, DXF and other documents with free to use online [GroupDocs Comparison Application](https://products.groupdocs.app/comparison).

### See also

- How to [compare documents](/comparison/java/how-to-compare-documents-in-the-easiest-way) in the easiest way
- How to [compare files](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java or Kotlin
- How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
- How to [use Ktor Comparison](/comparison/java/how-to-use-ktor-comparison-sample) Sample
- How to [show autocad drawings preview](/comparison/java/how-to-show-autocad-drawings-preview-in-kotlin-compose-application) in kotlin compose application
- How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
