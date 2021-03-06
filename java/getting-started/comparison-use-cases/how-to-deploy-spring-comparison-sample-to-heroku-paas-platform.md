---
id: how-to-deploy-spring-comparison-sample-to-heroku-paas-platform
url: comparison/java/how-to-deploy-spring-comparison-sample-to-heroku-paas-platform
title: How to deploy Spring comparison sample to Heroku PaaS platform
weight: 21
description: "The article describes how to deploy Spring comparison sample to Heroku PaaS platform"
keywords: Spring Framework, Compare documents, Compare files with Kotlin, Paas, Heroku
productName: GroupDocs.Comparison for Java
hideChildren: False
structuredData:
    showOrganization: True
    application:
        name: Spreadsheet, AutoCad, Image comparer
        description: The product allows to compare PowerPoint, Code, Image, AutoCad, Pdf, Word, Excel and much more documents
        productCode: comparison
        productPlatform: java
    howTo:
        name: How to deploy Spring project to Heroku
        description: Learn how to deploy Comparison Spring sample project to Heroku
        steps:
        - name: System requirements
          text: Which tools you need to deploy application to Heroku
        - name: Getting sample application from GitHub
          text: Downloading pre-configured sample application to deploy it
        - name: Main points in the project to be deployed to Heroku
          text: Main things to be configured in the project before starting deploying it
        - name: Creating Heroku application
          text: Creating application in Heroku account in which the sample will be deployed
        - name: Deploying sample application to Heroku
          text: Running command to deploy the sample application and checking that everything works
---

One of the most popular solutions to deploy web applications and websites is PaaS (platform as a service). Fortunately, [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) developed to be easily integrated with them. This article describes the way you can deploy comparison example, developed with Spring Framework, to one of very popular PaaS platform - Heroku. The comparison example is completely free to use and modify. It is available [on GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/68c3f01/Demos/Spring) page.

### System requirements

Next applications must be installed to deploy the sample to Heroku server

1. `Heroku CLI` - tool to access Heroku account (of course, you need an account)
2. `Git` - tool to download sample application and to deploy it to Heroku server

### Getting sample application from GitHub

1. Open [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) with samples of [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/)
2. Using green button `Code` on the right top of the page copy HTTPS repository link
3. Open Linux terminal or Windows Command Line and run the next command

    ```shell
    git clone https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java.git
    ```

The command will download project with samples from GitHub to your local directory. Do not close the command line

### Main points in the project to be deployed to Heroku

1. Maven profile to build JAR file is configured and active by default
2. Sample configured to use `PORT` environment variable (file `configuration.yml`). It is important, because Heroku can change port each time app starts

    <script src="https://gist.github.com/groupdocs-comparison-gists/2f55731e40bfc2db4b42e48c58f8faa6.js"></script>

3. To say Heroku how to run the application was created special file (`Procfile`) 

    <script src="https://gist.github.com/groupdocs-comparison-gists/90a35cf6498755ae7672cb83cfbd4d73.js"></script>

4. File `system.properties` was created to specify Java version our app needs

    <script src="https://gist.github.com/groupdocs-comparison-gists/387d00d93e8527292e71385fa0c22d0f.js"></script>

### Creating Heroku application

1. Run next command in order to go to samples directory and to log in with Heroku account

    <script src="https://gist.github.com/groupdocs-comparison-gists/5846d06dbc8f5a099596e10531a1fc20.js"></script>

    The last command will open Heroku website where you should log in to grand command line tool access to your account

2. Use next command to create new Heroku application

    <script src="https://gist.github.com/groupdocs-comparison-gists/549e2bd14bbff90c1a1e8c6be2b64053.js"></script>

    Where `my-spring-comparer` is the name of the app. You can change it however you want, but it must be unique. The result of the command will be a web url to access your new app and a link to heroku git repository. Here is an example of command line output:

    ```shell
    https://my-spring-comparer.herokuapp.com/ | https://git.heroku.com/my-spring-comparer.git
    ```

### Deploying sample application to Heroku

1. Next, add heroku repository link as a remote to sample app repository using next command:

    <script src="https://gist.github.com/groupdocs-comparison-gists/9b23f36cc6434900449e4906bed6d7cc.js"></script>
    
    Where `my-spring-comparer` is the name of Heroku app, `heroku-spring` is a name that will be used by git to identify heroku repository. You can change it, but don't forget new one.

2. Deploy the application to Heroku server using next command

    <script src="https://gist.github.com/groupdocs-comparison-gists/cd1fc18b42f1c00841be0371c538385a.js"></script>
    
    Here is `Demos/Spring` a path to the sample you want to push. The root of the path is a root directory of git project of the sample. `heroku-spring` is heroku repository name from previous step, that is used to identify it. `master` is a git branch in Heroku repository. At the moment Heroku deploys only `master` and `main` branches.
    
    The command will upload Spring sample to Heroku server and start building it. You will see the output of the build process in the command line. Everything must finish successfully. If so, just open link from step 2 ([https://my-spring-comparer.herokuapp.com/](https://my-spring-comparer.herokuapp.com/)) in your favourite browser to see uploaded application. In order to check the app you can upload few files using Comparison UI.

You can manage your applications in Heroku [web interface](https://dashboard.heroku.com/apps)

### Useful commands

* Use next command to show common help of Heroku CLI

    <script src="https://gist.github.com/groupdocs-comparison-gists/2227f67f2799830aafa784cb787a9c3e.js"></script>

* To show help for definite command, type it after `help` word

    <script src="https://gist.github.com/groupdocs-comparison-gists/2feb7810177c6918d9651e2a898ce3a7.js"></script>

* To show logs of specific application use next command (add `--tail` parameter to see logs in real time)

    <script src="https://gist.github.com/groupdocs-comparison-gists/1fb868756cff79b05bbb951dd620f842.js"></script>

* It is possible to access remote filesystem using next command

    <script src="https://gist.github.com/groupdocs-comparison-gists/1b7968ffc4805be2774ef9c33de252a3.js"></script>

    Don't forget, all changes in remote filesystem will be lost when the app restarts

* You can restart the app using next command

    <script src="https://gist.github.com/groupdocs-comparison-gists/be60e3092d9e2515423a621e01a1833a.js"></script>

### More opportunities

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) is a modern, useful and very powerful solution to compare different documents, files and images, while its samples are completely free to use and open to be modified. You can change them to work with Heroku add-ons, for example database or files storages. Spring sample has different configurations (see `configuration.yml`) which are available by setting environment variables. You can do it in Heroku web interface or from the command line. Moreover, Spring sample has implementations of using Google Drive API and Dropbox API as a sources of files for comparison. To find out more see [Google Drive API integration](/comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api/) and [Dropbox API integration](/comparison/java/how-to-use-dropbox-api-as-files-source-for-comparison-api/) pages

### Get a Free API License

Lots of comparison settings, for example, [generating summary page](/comparison/java/get-only-summary-page/), [sensitivity of comparison](/comparison/java/adjusting-comparison-sensitivity/) and so on, are available only with license. You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) in order to use the API without evaluation limitations.

### Conclusion

Comparison sample application created with Spring Framework as a core, is just one example of using [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) for comparing Pdf, Word, Excel documents, PowerPoint presentations, Diagrams, CAD files, images and much more [supported file formats](/comparison/java/supported-document-formats/). There are more samples of using GroupDocs.Comparison with Java and Kotlin on [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). To get more details, options, and examples, you can go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Reach us [on the forum](https://forum.groupdocs.com/) for your queries.

### See also

* How to [compare documents](/comparison/java/how-to-compare-documents-in-the-easiest-way) in the easiest way
* How to [compare AutoCad files](/comparison/java/how-to-compare-autocad-drawings) in Java or Kotlin
* How to [depoy Ktor sample](comparison/java/how-to-deploy-ktor-comparison-sample-to-heroku-paas-platform) to Heroku PaaS platform
* How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
* How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
* How to [depoy Dropwizard sample](/comparison/java/how-to-deploy-dropwizard-comparison-sample-to-heroku-paas-platform) to Heroku PaaS platform
