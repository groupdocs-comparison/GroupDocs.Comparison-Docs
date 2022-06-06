---
id: how-to-deploy-dropwizard-comparison-sample-to-heroku-paas-platform
url: comparison/java/how-to-deploy-dropwizard-comparison-sample-to-heroku-paas-platform
title: How to deploy Dropwizard comparison sample to Heroku PaaS platform
weight: 22
description: "The article describes Dropwizard comparison sample deploying process to Heroku PaaS platform"
keywords: Dropwizard Framework, Compare documents with Java or Kotlin, Platform as a service, Paas, Heroku
productName: GroupDocs.Comparison for Java
hideChildren: False
---

There are lots of ways to publish application. One of the most popular among them is to deploy websites or web application with a help of PaaS (platform as a service). Luckily, [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) created to be easily integrated with them. This article is about deploying comparison sample application, developed with Dropwizard Framework, to Heroku - very popular PaaS platforms. The comparison sample application is completely free to be used and modified. It is available [on GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/68c3f01/Demos/Dropwizard) page.

### System requirements

It is important to install next applications before deploying the sample to Heroku server

1. `Heroku CLI` - tool to create app in Heroku account (of course, you need an account)
2. `Git` - tool to work with sample application repository and to deploy it to Heroku server

### General points in the sample to be deployed to Heroku

1. Sample configured to use `PORT` environment variable (file `configuration.yml`). It must be done because Heroku can change port each time app starts

    ```yaml
    server:
      connector:
        port: ${PORT:-8080}
    ```

2. To let Heroku know how to run the application, special file (`Procfile`) was created 

    ```
    web: java -jar target/comparison-dropwizard-22.3.jar
    ```

3. File `system.properties` was created to specify Java version that the app needs

    ```properties
    java.runtime.version=1.8
    ```

### Getting sample app from GitHub

1. Open [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) with samples of [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/)
2. There is a green button `Code` on the right top of the page, click it and copy HTTPS repository link
3. Open Linux terminal or Windows Command Line and run the next command

    ```shell
    git clone https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java.git
    ```

After that, project with samples from GitHub will be downloaded to your local directory. Do not close the command line

### Creating Heroku application

1. Run next command to go to samples directory and to run log in process

    ```shell
    cd .\GroupDocs.Comparison-for-Java\
    heroku login
    ```

    Heroku page will be opened in a browser where you must log in so that command line tool will have access to your account

2. Run command below to create new Heroku application

    ```shell
    heroku apps:create my-dropwizard-comparer
    ```

    Where `my-dropwizard-comparer` is the name of new application. You are free to change it however you want, the only thing - it must be unique. The result of the command is a web url to access your new application and a link to heroku git repository. Below is an example of command line result output:

    ```shell
    https://my-dropwizard-comparer.herokuapp.com/ | https://git.heroku.com/my-dropwizard-comparer.git
    ```

3. Next, add heroku repository link as a 'remote' to sample application repository using command below

    ```shell
        heroku git:remote --app my-dropwizard-comparer --remote heroku-dropwizard
    ```
    
    Where `my-dropwizard-comparer` is Heroku app name, `heroku-dropwizard` heroku repository identifier. You can change it, but don't forget new one.

4. Deploy the application to Heroku server using command below

    ```shell
    git subtree push --prefix Demos/Dropwizard heroku-dropwizard master
    ```
    
    Here is `Demos/Dropwizard` a path to the sample you want to push. It is relative, starts from git root of the sample. `heroku-dropwizard` is heroku repository identifier from previous step. `master` is a git branch in Heroku repository. At the moment Heroku deploys only `master` and `main` branches.
    
    The command will upload Dropwizard sample to Heroku server and start its build. You will see the output of the build process in the command line. Everything must finish successfully. If so, just open link from step 2 ([https://my-dropwizard-comparer.herokuapp.com/](https://my-dropwizard-comparer.herokuapp.com/)) in your favourite browser to see the application that was uploaded. In order to check the app you can upload few files with a help of Comparison UI.

To manage applications you can use Heroku [web interface](https://dashboard.heroku.com/apps)

### Useful commands

* The command below will show common help of Heroku CLI

    ```shell
    heroku help
    ```

* To see help for definite command, type it after `help` word

    ```shell
    heroku help logs
    ```

* To see logs of specific application just run next command (you can add `--tail` parameter to show logs in real time)

    ```shell
    heroku logs --app my-dropwizard-comparer
    ```

* It is easy to access remote filesystem running command below

    ```shell
    heroku run bash --app my-dropwizard-comparer
    # For exit type 'exit'
    ```

    Note: all changes in remote filesystem will be lost when the app restarts

* To restart the app use command below

    ```shell
    # To show heroku runner that is used in your app
    heroku ps --app my-dropwizard-comparer
    # Change 'web.1' to your apps runner
    heroku ps:restart web.1 --app my-dropwizard-comparer
    ```

### More opportunities

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) is not only modern but also powerful solution to compare different documents, images and other files. In the same time, comparison samples are fully free to use and open to be changed. You can update them to work with Heroku add-ons, for example database or files storages. Dropwizard sample has lots of options (see `configuration.yml`) which are available by setting environment variables. It is easy to change them in Heroku web interface or using command line. Furthermore, Dropwizard sample has embedded solution to use Google Drive API or Dropbox API as a storage of files to be compared. To find out more see [Google Drive API integration](/comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api/) and [Dropbox API integration](/comparison/java/how-to-use-dropbox-api-as-files-source-for-comparison-api/) pages

### Get a Free API License

Lots of comparison settings, for example, [generating summary page](/comparison/java/get-only-summary-page/), [sensitivity of comparison](/comparison/java/adjusting-comparison-sensitivity/) and so on, are available only with license. You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) in order to use the API without evaluation limitations.

### Conclusion

Comparison sample application created using Dropwizard Framework is only one example of using [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/) for comparing Pdf, Word, Excel spreadsheet, PowerPoint presentations, Diagrams, CAD files, OpenOffice files, images and much more [supported file formats](/comparison/java/supported-document-formats/). You can find more samples of using GroupDocs.Comparison with Java and Kotlin on [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). For more details, options, and examples, go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Reach us [on the forum](https://forum.groupdocs.com/) for your queries.

### See also

* How to [compare documents](/comparison/java/how-to-compare-documents-in-the-easiest-way) in the easiest way
* How to [compare AutoCad files](/comparison/java/how-to-compare-autocad-drawings) in Java or Kotlin
* How to [depoy Ktor sample](comparison/java/how-to-deploy-ktor-comparison-sample-to-heroku-paas-platform) to Heroku PaaS platform
* How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
* How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin
* How to [depoy Spring sample](/comparison/java/how-to-deploy-spring-comparison-sample-to-heroku-paas-platform) to Heroku PaaS platform
