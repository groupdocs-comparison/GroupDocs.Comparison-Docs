---
id: how-to-deploy-ktor-comparison-sample-to-heroku-paas-platform
url: comparison/java/how-to-deploy-ktor-comparison-sample-to-heroku-paas-platform
title: How to deploy Ktor comparison sample to Heroku PaaS platform
weight: 20
description: "The article describes the way you can deploy our Ktor comparison sample to Heroku PaaS platform"
keywords: Ktor Framework, Compare documents, Compare files with Kotlin, Paas, Heroku
productName: GroupDocs.Comparison for Java
hideChildren: False
---
Platform as a service (PaaS) is very popular solution to deploy web applications and websites. Luckily, [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) can easily be integrated with them. In the article is described how you can deploy comparison example, that is written with Ktor Framework to one of the most popular PaaS platform - Heroku. The comparison example is free to use and is available [on GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/68c3f01/Demos/Ktor) page.

### System requirements

To deploy the sample to Heroku server you need next applications to be installed

1. `Heroku CLI` - to get access to your account (of course, you need an account)
2. `Git` - to load the sample application and to deploy it to Heroku server

### Key points in the sample to be deployed to Heroku

1. Special gradle task was added to `build.gradle.kts`. It is needed for Heroku to build the executable file the sample

    ```kotlin
    tasks {
        create("stage").dependsOn("installDist")
    }
    ```

2. Using port from `PORT` environment variable (file `application.conf`). It is important, because Heroku can change port each time app starts

    ```
    ktor {
        deployment {
            dev {
                ...
                port = 8080
                port = ${?PORT}
            }
            prod {
                ...
                port = 80
                port = ${?PORT}
            }
        }
    }
    ```

3. File `Procfile` was created in order to say Heroku how to run out application

    ```
    web: ./build/install/comparison-ktor/bin/comparison-ktor
    ```

4. File `system.properties` was created to specify Java version our app needs

    ```properties
    java.runtime.version=11
    ```

### Getting sample app from GitHub

1. Go to [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java) with samples of [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/)
2. Click green button `Code` on the right top of the page and copy HTTPS repository link
3. Open Windows Command Line or Linux terminal and run next command

    ```shell
    git clone https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java.git
    ```

Sample app was downloaded from GitHub to your local directory. Do not close the command line

### Creating Heroku application

1. In command line run next commands

    ```shell
    cd .\GroupDocs.Comparison-for-Java\
    heroku login
    ```

    It will open Heroku web page where you should log in to give command line tool access to your account

2. Create application running next command:

    ```shell
    heroku apps:create my-comparison-app-name
    ```

    Where `my-comparison-app-name` is the name of the app. You can use any name, but it must be unique. The result of the command will be a web url to access your new app and a link to heroku git repository:

    ```shell
    https://my-comparison-app-name.herokuapp.com/ | https://git.heroku.com/my-comparison-app-name.git
    ```

3. Add heroku git repository link as a remote to sample app repository running next command:

    ```shell
        heroku git:remote --app my-comparison-app-name --remote heroku
    ```
    
    Where `my-comparison-app-name` is app name, `heroku` is just a name which will be used by git to identify heroku git repository. You can change it, but don't forget new one.

4. Push the application to Heroku server

    ```shell
    git subtree push --prefix Demos/Ktor heroku master
    ```
    
    Here is `Demos/Ktor` a path to the sample you want to push. The root of the path is a root directory of git project of the sample. `heroku` is a name from previous step, that is used to identify heroku git repository. `master` is a git branch in Heroku git repository. Heroku deploys only `master` and `main` branches.
    
    As a result of the command the sample will be uploaded to Heroku server and the build of the sample will be run. You will see the output of the build in command line. Everything must finish successfully. If so, just open link from step 2 ([https://my-comparison-app-name.herokuapp.com/](https://my-comparison-app-name.herokuapp.com/)) in browser to see uploaded application. To check the app you can upload few files using Comparison UI.

You can manage your apps in Heroku [web interface](https://dashboard.heroku.com/apps)

### Useful commands

* To show common help use next commands

    ```shell
    heroku help
    ```

* To show help for definite command, type it after `help` word

    ```shell
    heroku help logs
    ```

* To show logs use next command (add `--tail` parameter to show logs in real time)

    ```shell
    heroku logs --app my-comparison-app-name
    ```

* To access remote filesystem you can use next command

    ```shell
    heroku run bash --app my-comparison-app-name
    # For exit type 'exit'
    ```

    Keep in mind, all changes in remote filesystem  will be lost when the app restarts

* To restart the app, use next commands

    ```shell
    # To show heroku runner that is used in your app
    heroku ps --app my-comparison-app-name
    # Change 'web.1' to your apps runner
    heroku ps:restart web.1 --app my-comparison-app-name
    ```

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
