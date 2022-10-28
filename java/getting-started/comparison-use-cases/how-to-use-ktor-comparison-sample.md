---
id: how-to-use-ktor-comparison-sample
url: comparison/java/how-to-use-ktor-comparison-sample
title: How to use Ktor comparison sample
weight: 19
description: "The article describes GroupDocs Comparison sample created with using Ktor Framework"
keywords: Ktor Framework, Compare documents, Compare files with Kotlin, Comparison Tool with Kotlin and Ktor Framework
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Pdf, Word, Image comparison API
    description: The product allows to compare Pdf, Word and Image files
    productCode: comparison
    productPlatform: java
  howTo:
    name: How to use Ktor Framework
    description: Learn how to use Ktor Framework to compare documents, images and other files in Java or Kotlin project
    steps:
      - name: Which technologies will be used
        text: Find out which technologies are required and will be used in the application
      - name: Common structure of the project
        text: It is very important to form main structure of the application project
      - name: Entry point or how to run the sample
        text: One or few ways the application will be launched
      - name: Key places inside the application
        text: Implement general functions inside the application to make it work
---

There are lots of popular web frameworks which you can use with GroupDocs Comparison library. One of the most modern and powerful Kotlin frameworks is Ktor. This article describes example of using Ktor Framework together with modern and powerful [GroupDocs.Comparison API](https://products.groupdocs.com/comparison) for comparing Word, Excel, PowerPoint, Pdf documents, photos and much more. The example is completely free to use and available [on GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/68c3f01/Demos/Ktor)

### Which technologies will be used

1. Kotlin - A modern programming language that makes developers happier. Fully compatible with Java libraries.
2. Ktor - Modern, Open Source, free, and fun Web Framework.
3. Netty - Embedded into Ktor version of web server.
4. [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) - modern comparison library for Java, Kotlin and .NET
5. Koin - Smart Kotlin injection library
6. Logback - Universal logging system

### Common structure of the project

- `config` - Kotlin classes for mapping application and comparer configurations
- `di` - Koin dependency injection modules
- `manager` - abstract layer for wide used operations
- `model` - request/response Kotlin classes
- `modules` - url mappings and controllers to process requests
- `status` - handlers to process exceptions
- `usecase` - business logic

#### Additional important files

In sources:

- `Application.kt` - application entry point
- `Defaults.kt` - default values to be used if they are not configured

In resources:

- `application.conf` - application configuration
- `comparer.conf` - sample configuration
- `logback.xml` - configuration of logging system

### Entry point or how to run the sample

#### Using IDE

The entry point of the application is in a file `Application.kt`. There is a `main` function that must be run to start the application. You can do it within your favourite IDE.

#### Using command line

To run the application, open command line in Ktor sample directory and run next command

<script src="https://gist.github.com/groupdocs-comparison-gists/6987202c524f6c430eae2669bad8c64b.js"></script>

The command will run application using gradle wrapper, that is in `gradle` directory. Open [http://localhost:8080/comparer](http://localhost:8080/comparison) in web browser.

You can easily create archive for distribution. To do it, just build the application with the next command

<script src="https://gist.github.com/groupdocs-comparison-gists/77581fd6decb81d87d7a7487f997de7a.js"></script>

After that, you can go to `.\build\distributions\` directory and find next distribution files:

- comparison-ktor-22.3.tar
- comparison-ktor-22.3.zip

There are two directories inside them, `lib` with all application libraries and `bin` with scripts to run the app

### Key places inside the application

#### Mappings and controllers

Package `mudules` contains some amount of sub packages. Each of them is a single request. For example, lets review sub package `compare`.
The package has two files:

1. `CompareModule.kt` - contains url mapping, will be called when request to compare documents will be sent from browser

   <script src="https://gist.github.com/groupdocs-comparison-gists/6c365c5e96514aad2d97c319e67540d5.js"></script>

   All, the class does: catches request, extracts parameters, calls controller and returns response object

2. `CompareController.kt` - combining usecases results and parameters creates response object.
   First of all, using `PathManager` it checks that request paths are inside allowed directories

    <script src="https://gist.github.com/groupdocs-comparison-gists/80121384a48c0bd18adf82471ec06158.js"></script>

   Then, the controller checks, are requested files supported by comparison application. For this purpose it uses special usecase, that is called `AreFilesSupportedUseCase`

    <script src="https://gist.github.com/groupdocs-comparison-gists/d967ad8ff4850452d20be766fc80e540.js"></script>

   The next step is to create path to the file, in which will be saved the result document of the comparison process

    <script src="https://gist.github.com/groupdocs-comparison-gists/e5fbb26f52bd2a20e6ba7e918761bc60.js"></script>

   Temporary files are used to minimize usage of RAM. It is easy to change app so that it will not save any files. Temporary directory can be specified in `comparer.conf`. By default, system temp directory is used.

   Now, the controller uses `CompareDocumentsUseCase` to compare source and target documents and to save the result file. Also, the usecase returns list of changes, that will be set into response object later

    <script src="https://gist.github.com/groupdocs-comparison-gists/8c38027c876bcdb257a410ed9ed295b6.js"></script>

   The next usecase, which is called `RetrieveLocalFilePagesStreamUseCase`, is used to get input stream for each page of the result document

    <script src="https://gist.github.com/groupdocs-comparison-gists/3a9ae7912f345b02e45a2469287ffed6.js"></script>

   And the last step is to map groupdocs `ChangeInfo` objects into response models, which will be sent as a result

#### What is usecases and how to use them

In common - usecase is a single thin that can be done. Usually, it contains business logic, has only one aim and is easy to test. All usecases in the project are configured to be created by Koin. Some usecases have constructor parameters, which are injected when Koin will create instance of usecase.
As an example, let's overview `CompareDocumentsUseCase`

The usecase has `invoke` operator overridden, so that it can be called using it's object as a function. The only aim of the usecase is to compare source and target documents and to write the result to provided output stream.

<script src="https://gist.github.com/groupdocs-comparison-gists/a73539b2fdb66f8cde9495beb47d5fc5.js"></script>

As a parameters it takes paths of source and target documents and output stream, in which the result should be saved. Optional parameters are passwords for each document.

To compare documents we use powerful and modern [GroupDocs.Comparison for Java/Kotlin](https://products.groupdocs.com/comparison/java/) library. With the library the comparison process is very easy.

First step is to create object of `Comparer` class. Load options are used to provide password for the document. Also, with options you can configure Comparer to use first parameter not as path to the source document (streams are also available) but to use it as a source text for comparison process. Furthermore, there is an option to configure directories with specific fonts. Comparer implements Java `Closeable` interface, so it is very easy to free used memory.

<script src="https://gist.github.com/groupdocs-comparison-gists/cded4b9f8a4f1fd1ec4ae1de61c3b15a.js"></script>

Inside `use` block we call `add` method of comparer to add second document or text for comparing. The method takes the same `LoadOptions` parameter. Moreover, [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) supports multi-document comparison, so that you can add more than one target document.

<script src="https://gist.github.com/groupdocs-comparison-gists/180ae9b27854c4b11dde7854e6ead725.js"></script>

The last thin is to call `compare` method, that will start comparison process. As you can see, the method takes `CompareOptions` object as a second argument. Here are used just a few options. It is configured to show content, that was deleted in target document, to recognise and process styles changes and to provide coordinate of each change in the result document. There are much more options available. For example, you can enable generating summary page, change comparison sensitivity level, enable/disable each type of change, configure it's style in result document and so on. More options you can find [in the documentation](/comparison/java/getting-started/).
At the end of the `apply` block we use `comparer.getChanges()` method to get list of changes.

#### Dependency injection

One more important thing in the application is an object `ModulesInjection`. It is used to give Koin information about classes and interfaces, which it should create or inject. Here are controllers, usecases and managers. Adding any new class, that must be injected by Koin, it is highly important to specify it in one of modules here.

<script src="https://gist.github.com/groupdocs-comparison-gists/0754c1a4729f7b0f0e6d4828049d6a48.js"></script>

### Get a Free API License

Lots of comparison settings, for example, generating summary page, sensitivity of comparison and so on, are available only with license. You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) in order to use the API without evaluation limitations.

### Conclusion

The article describes [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) sample, that was implemented using Ktor web framework. There are more samples of using GroupDocs.Comparison for Java/Kotlin on our [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). They are completely free and open to use them as a core of your own application for comparing photos, Excel, Word, code files, PowerPoint Presentations and much more [supported file formats](/comparison/java/supported-document-formats/).

For more details, options, and examples, you can go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Reach us [on the forum](https://forum.groupdocs.com/) for your queries.

### See also

- How to [compare documents](/comparison/java/how-to-compare-documents-in-the-easiest-way) in the easiest way
- How to [compare files](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java or Kotlin
- How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
- How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
- How to [use Dropbox API](/comparison/java/how-to-use-dropbox-api-as-files-source-for-comparison-api) as files source for Comparison API
- How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
