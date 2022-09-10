---
id: how-to-deploy-ktor-comparison-sample-to-heroku-paas-platform
url: comparison/java/how-to-deploy-ktor-comparison-sample-to-heroku-paas-platform
title: How to deploy Ktor comparison sample to Heroku PaaS platform
weight: 20
description: "The article describes the way you can deploy our Ktor comparison sample to Heroku PaaS platform"
keywords: Ktor Framework, Compare documents, Compare files with Kotlin, Paas, Heroku
productName: GroupDocs.Comparison for Java
hideChildren: False
structuredData:
    showOrganization: True
    application:
        name: Pdf, Word, Excel comparer
        description: The product allows to compare Pdf, Word, Excel, PowerPoint, Code, Image, AutoCad and much more documents
        productCode: comparison
        productPlatform: java
    howTo:
        name: How to deploy Ktor project to Heroku
        description: Learn how to deploy Comparison Ktor sample project to Heroku
        steps:
        - name: System requirements
          text: Which tools you need to deploy application to Heroku
        - name: Getting sample application from GitHub
          text: Downloading pre-configured sample application to deploy it
        - name: Key points in the project to be deployed to Heroku
          text: Main things to be configured in the project before starting deploying it
        - name: Creating Heroku application
          text: Creating application in Heroku account in which the sample will be deployed
        - name: Deploying sample application to Heroku
          text: Running command to deploy the sample application and checking that everything works
---
Platform as a service (PaaS) is very popular solution to deploy web applications and websites. Luckily, [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) can easily be integrated with them. In the article is described how you can deploy comparison example, that is written with Ktor Framework to one of the most popular PaaS platform - Heroku. The comparison example is free to use and is available [on GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/68c3f01/Demos/Ktor) page.

### System requirements

To deploy the sample to Heroku server you need next applications to be installed

1. `Heroku CLI` - to get access to your account (of course, you need an account)
2. `Git` - to load the sample application and to deploy it to Heroku server

### Getting sample application from GitHub

1. Go to [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) with samples of [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/)
2. Click green button `Code` on the right top of the page and copy HTTPS repository link
3. Open Windows Command Line or Linux terminal and run next command

    ```shell
    git clone https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java.git
    ```

Sample app was downloaded from GitHub to your local directory. Do not close the command line

### Key points in the project to be deployed to Heroku

1. Special gradle task was added to `build.gradle.kts`. It is needed for Heroku to build the executable file the sample

    <script src="https://gist.github.com/groupdocs-comparison-gists/9420eee014f7f425a6f53cc8405fb21d.js"></script>

2. Using port from `PORT` environment variable (file `application.conf`). It is important, because Heroku can change port each time app starts

    <script src="https://gist.github.com/groupdocs-comparison-gists/c3e61833f1878eccfd5c7bb4830f62e5.js"></script>

3. File `Procfile` was created in order to say Heroku how to run out application

    <script src="https://gist.github.com/groupdocs-comparison-gists/585de64fb7b5d3b0f8af68871f39161d.js"></script>

4. File `system.properties` was created to specify Java version our app needs

    <script src="https://gist.github.com/groupdocs-comparison-gists/387d00d93e8527292e71385fa0c22d0f.js"></script>

### Creating Heroku application

1. In command line run next commands

    <script src="https://gist.github.com/groupdocs-comparison-gists/5846d06dbc8f5a099596e10531a1fc20.js"></script>

    It will open Heroku web page where you should log in to give command line tool access to your account

2. Create application running next command:

    <script src="https://gist.github.com/groupdocs-comparison-gists/960345297cd9dd3cf427939d500a753b.js"></script>

    Where `my-comparison-app-name` is the name of the app. You can use any name, but it must be unique. The result of the command will be a web url to access your new app and a link to heroku git repository:

    ```shell
    https://my-comparison-app-name.herokuapp.com/ | https://git.heroku.com/my-comparison-app-name.git
    ```

### Deploying sample application to Heroku

1. Add heroku git repository link as a remote to sample app repository running next command:

    <script src="https://gist.github.com/groupdocs-comparison-gists/bc2086fe645337ae3e27fa9778766208.js"></script>
    
    Where `my-comparison-app-name` is app name, `heroku` is just a name which will be used by git to identify heroku git repository. You can change it, but don't forget new one.

2. Push the application to Heroku server

    <script src="https://gist.github.com/groupdocs-comparison-gists/11a09f4de71024831f9f931bd8e9621f.js"></script>
    
    Here is `Demos/Ktor` a path to the sample you want to push. The root of the path is a root directory of git project of the sample. `heroku` is a name from previous step, that is used to identify heroku git repository. `master` is a git branch in Heroku git repository. Heroku deploys only `master` and `main` branches.
    
    As a result of the command the sample will be uploaded to Heroku server and the build of the sample will be run. You will see the output of the build in command line. Everything must finish successfully. If so, just open link from step 2 ([https://my-comparison-app-name.herokuapp.com/](https://my-comparison-app-name.herokuapp.com/)) in browser to see uploaded application. To check the app you can upload few files using Comparison UI.

You can manage your apps in Heroku [web interface](https://dashboard.heroku.com/apps)

### Useful commands

* To show common help use next commands

    <script src="https://gist.github.com/groupdocs-comparison-gists/2227f67f2799830aafa784cb787a9c3e.js"></script>

* To show help for definite command, type it after `help` word

    <script src="https://gist.github.com/groupdocs-comparison-gists/2feb7810177c6918d9651e2a898ce3a7.js"></script>

* To show logs use next command (add `--tail` parameter to show logs in real time)

    <script src="https://gist.github.com/groupdocs-comparison-gists/8214014faef1b27e8e2279405b43093e.js"></script>

* To access remote filesystem you can use next command

    <script src="https://gist.github.com/groupdocs-comparison-gists/5c46e7a117ec410deabd4e5d7a4abb60.js"></script>

    Keep in mind, all changes in remote filesystem  will be lost when the app restarts

* To restart the app, use next commands

    <script src="https://gist.github.com/groupdocs-comparison-gists/fecb1c7111e46cc1d3c4cd8d912becd3.js"></script>

### More opportunities

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) is a very powerful and modern solution for comparing different files, documents and images, while its samples are completely free and open to be modified. You can change them to work with Heroku add-ons, for example database or files storages. Ktor sample has different configurations (see `comparer.conf`) which are available by setting environment variables. You can do it in Heroku web interface or from the command line. 

### Get a Free API License

Lots of comparison settings, for example, [generating summary page](/comparison/java/get-only-summary-page/), [sensitivity of comparison](/comparison/java/adjusting-comparison-sensitivity/) and so on, are available only with license. You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) in order to use the API without evaluation limitations.

### Conclusion

Ktor sample app for [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) is just one example of using [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) for comparing Pdf, Word, Excel documents, PowerPoint presentations, Diagrams, CAD files, images and much more [supported file formats](/comparison/java/supported-document-formats/). There are more samples of using GroupDocs.Comparison with Java and Kotlin on [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). To get more details, options, and examples, you can go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Reach us [on the forum](https://forum.groupdocs.com/) for your queries.

### See also

* How to [compare documents](/comparison/java/how-to-compare-documents-in-the-easiest-way) in the easiest way
* How to [compare AutoCad files](/comparison/java/how-to-compare-autocad-drawings) in Java or Kotlin
* How to [compare files](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java or Kotlin
* How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
* How to [deploy Spring comparison sample](/comparison/java/how-to-deploy-spring-comparison-sample-to-heroku-paas-platform) to Heroku PaaS platform
* How to [use comparison tool](/comparison/java/how-to-use-ktor-comparison-sample) with Ktor Framework
