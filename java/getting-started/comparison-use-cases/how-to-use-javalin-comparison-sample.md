---
id: how-to-use-javalin-comparison-sample
url: comparison/java/how-to-use-javalin-comparison-sample
title: How to use Javalin comparison sample
weight: 25
description: "The article describes GroupDocs Comparison sample created with using Javalin Framework"
keywords: Compare documents, Javalin Framework, Compare files with Kotlin, Comparison Tool with Kotlin and Javalin Framework
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
    showOrganization: True
    application:
        name: PowerPoint, Excel, Image comparison API
        description: The product allows to compare PowerPoint, Excel and Image files
        productCode: comparison
        productPlatform: java
    howTo:
        name: How to use Javalin Framework
        description: Learn how to use Javalin Framework to compare documents
        steps:
        - name: Used technologies
          text: Find out which technologies are required and will be used in the application
        - name: Common project structure
          text: It is very important to understand main structure of the project
        - name: How to run the sample
          text: One or few ways the application can be run
        - name: Main points inside the application
          text: Implement general functions inside the application to make it work
---

GroupDocs Comparison library can be used with lots of popular Web frameworks. One of them is Javalin Framework. Going through the article you will understand, how easy modern and powerful [GroupDocs.Comparison API](https://products.groupdocs.com/comparison) can be combined with Javalin Framework to create web application for comparing AutoCad drawings, PowerPoint presentations, Word, Excel and Pdf documents, photos, images and [much more](/comparison/java/supported-document-formats/). The example application is completely free to use and to be changed. Sources are available on [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/d1e380f/Demos/Javalin)

### Used technologies 

1. Kotlin - A modern programming language that makes developers happier. Fully compatible with Java libraries.
2. Javalin - A simple web framework for Java and Kotlin.
3. Jetty - Embedded into Javalin web server.
4. [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) - modern comparison library for Java, Kotlin and .NET
5. Koin - Smart Kotlin injection library
6. Slf4j - Wrapper for logging system

### Common project structure 

- `config` - Kotlin class for mapping configuration of the application
- `di` - Modules of Koin dependency injection
- `manager` - Manager to work with paths
- `model` - Models that represent requests and responses
- `modules` - Url mappings with controllers to process requests
- `usecase` - business logic

#### Extra files

In sources:

- `Application.kt` - application entry point
- `Defaults.kt` - default values for configuration options

In resources:

- `application.conf` - configuration of the application
- `logback.xml` - logging system configuration

### How to run the sample

#### Using IDE

The entry point of the sample is in a file `Application.kt`. It contains `main` function that must be executed to run the application. You can do it using favourite IDE. 

#### Using command line

Open command line in the sample directory. To run the sample execute next command

<script src="https://gist.github.com/groupdocs-comparison-gists/6987202c524f6c430eae2669bad8c64b.js"></script>

The command will start the application with a help of gradle wrapper, that is in `gradle` directory. Open [http://localhost:8080/comparer](http://localhost:8080/comparison) in web browser to see sample UI.

To create distribution archive, just build the application with the next command

<script src="https://gist.github.com/groupdocs-comparison-gists/77581fd6decb81d87d7a7487f997de7a.js"></script>

Then go to `.\build\distributions\` directory and you will see distribution files:

- comparison-javalin-22.11.tar
- comparison-javalin-22.11.zip

There are two directories inside them, `bin` with scripts to run the app and `lib` with all application libraries

### Main points inside the application

#### Mappings and controllers

Package `mudules` contains sub packages, each of which is a single request. As an example, lets review `compare` sub package.

The package has two files:

1. `CompareModule.kt` - this file contains url mapping, it will be called when request to compare documents will be sent

    <script src="https://gist.github.com/groupdocs-comparison-gists/20a0e6af013f3c0a8a57695efd2ed87d.js"></script>

    The class does simple things: catches request, extracts parameters, calls controller and returns response object

2. `CompareController.kt` - using usecases and parameters, it creates response object.
    Firstly, with a help of `PathManager`, controller checks that request paths are inside allowed directories 

    <script src="https://gist.github.com/groupdocs-comparison-gists/80121384a48c0bd18adf82471ec06158.js"></script>

    Secondly, it checks that requested files are supported by the sample. To do it, controller uses special usecase, which name is `AreFilesSupportedUseCase`

    <script src="https://gist.github.com/groupdocs-comparison-gists/d967ad8ff4850452d20be766fc80e540.js"></script>

    Thirdly, the controller creates path to the file, that will be used to save the result document of the comparison process

    <script src="https://gist.github.com/groupdocs-comparison-gists/e5fbb26f52bd2a20e6ba7e918761bc60.js"></script>

    There some temporary files are used. It is needed to minimize usage of RAM. Anybody can easily change the sample to avoid saving any files. There is special option in `application.conf` to configure path to the temporary directory. System temp directory is used by default.

    The next step is to use `CompareDocumentsUseCase` to compare source and target documents saving the result file. The usecase returns list of changes, that will be set into response object to send it back to client

    <script src="https://gist.github.com/groupdocs-comparison-gists/8c38027c876bcdb257a410ed9ed295b6.js"></script>

    Usecase `RetrieveLocalFilePagesStreamUseCase`, is used to get input stream for each page of the result document

    <script src="https://gist.github.com/groupdocs-comparison-gists/3a9ae7912f345b02e45a2469287ffed6.js"></script>

    And the final thing is to map `ChangeInfo` objects from groupdocs package into response models to be used as a result

#### Understanding usecases

Usecase is just a single action that can be done. Usually, it contains business logic to solve one task. Usecases must be easy for testing. In the project all usecases are configured to be created by Koin injection library. Some of them have constructor parameters, which will be injected by Koin when it will create an instance of the usecase.
For example, let's overview `CompareDocumentsUseCase`

There is `invoke` operator overridden, so that usecase can be called using it's object like a function. The usecase has one simple aim - comparing source and target documents writing the result to provided output stream.

<script src="https://gist.github.com/groupdocs-comparison-gists/a73539b2fdb66f8cde9495beb47d5fc5.js"></script>

It takes paths of source and target documents and output stream as arguments. Result data of comparison project will be written to the provided stream. As an option, there are parameters to pass password for each document.

There is powerful and modern [GroupDocs.Comparison for Java/Kotlin](https://products.groupdocs.com/comparison/java/) library used to compare documents. Comparison process is very easy with the library.

To compare documents, presentations, images and so on just do next steps:

1. Create object of `Comparer` class passing source document path or stream.
        Load options can be used to provide password for the source document. Moreover, using options you can configure Comparer to use the first argument as a source text for comparison process. Furthermore, there is an option to configure directories with fonts, specific for the document. Comparer implements Java `Closeable` interface, so it is very easy to free memory after using it.

    <script src="https://gist.github.com/groupdocs-comparison-gists/cded4b9f8a4f1fd1ec4ae1de61c3b15a.js"></script>

2. Call `add` method of comparer (inside `use` block) to add second document or text for comparing. The method takes the same `LoadOptions` parameter to provide password and so on. [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) supports multi-document comparison, so you can add more than one target document.

<script src="https://gist.github.com/groupdocs-comparison-gists/180ae9b27854c4b11dde7854e6ead725.js"></script>

3. The final step is to call `compare` method, that will run comparing. The method takes `CompareOptions` object as a second argument. In the sample just a few of available options are used. In the code above the comparer is configured to process styles changes, to show content, that was deleted and to retrieve coordinates of each change in the result document. There are much more options that can be used to configure comparison process. For example, it is easy to change comparison sensitivity level, enable generating summary page, enable/disable each type of change, configure their style in result document and much more. The information can be found [in the documentation](/comparison/java/getting-started/).
At the end of the `apply` block method `comparer.getChanges()` is used to get list of changes. 

#### Dependency injection

The last useful thing in the sample app is an object `ModulesInjection`. It gives Koin information about interfaces and classes, which Koin must create or inject. In the project, controllers, usecases and managers are configured. It is very easy to configure Koin to inject new class. Just specify it in one of modules here.

<script src="https://gist.github.com/groupdocs-comparison-gists/0754c1a4729f7b0f0e6d4828049d6a48.js"></script>

### Get a Free API License

Lots of comparison settings, for example, sensitivity of comparison, generating summary page and so on, are available only when license is set. You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) to use the API without evaluation limitations.

### Conclusion

In the article is described [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) sample, that was created with using Javalin web framework. Much more examples of using GroupDocs.Comparison for Java/Kotlin can be found on our [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). You are free to change and use them as a core of your own application in order to compare photos, Excel, Word, code files, PowerPoint Presentations and much more [supported file formats](/comparison/java/supported-document-formats/).

For getting details, options, and examples, you can go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Reach us [on the forum](https://forum.groupdocs.com/) for your queries.

### See also

- How to [compare documents](/comparison/java/how-to-compare-documents-in-the-easiest-way) in the easiest way
- How to [compare files](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java or Kotlin
- How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
- How to [use Ktor Comparison](/comparison/java/how-to-use-ktor-comparison-sample) Sample
- How to [see comparison and contrast](/comparison/java/how-to-see-comparison-and-contrast-of-essays) of essays
- How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
