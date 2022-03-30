---
id: how-to-compare-any-files-using-compose-desktop
url: comparison/java/how-to-compare-any-files-using-compose-desktop
title: How compare any files in Kotlin Compose Desktop application 
weight: 12
description: "The article is about using comparison API in Kotlin Compose application"
keywords: Compare any files or documents, differences of files, Diff tool in Kotlin Compose
productName: GroupDocs.Comparison for Java
hideChildren: False
---

In this article, we will discuss how to ues [GroupDocs.Comparison](https://products.groupdocs.com/comparison) API Compose Desktop application with Kotlin. After going through this article, you will find it easy to create comparing desktop application that can be run at any desktop platform, as Windows, Linux or Mac. Kotlin Compose is modern and fast-increasing in popularity UI framework. It is usually (*for now*) used for creating Android applications, but also supports creating Desktop, Web and Multiplatform applications. In this article will not be described how to use Compose in details, as there are lots of information on the internet.

## Files Comparison API for Kotlin

In this article, I will use [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) together with Kotlin for creating desktop application. Along with the most used image formats, like PNG, JPG/JPEG, and GIF, there is a wide range of [supported file formats](/comparison/java/supported-document-formats/) for comparison. Additionally, the API allows comparing word-processing documents, spreadsheets, presentations, drawings, webpages, email messages, source code files, and much more. Moreover, Comparison library can be used to generate preview images for any of [supported file formats](/comparison/java/supported-document-formats/) to display them in your application.

## Create and Configure Compose project

### Project creation

You can easily create Compose project by selecting `Kotlin` -> `Compose Desktop Aplication` option in IntelliJ Idea project creation window. You will have to choose project name, location, `Build system` (Gradle Kotlin is recommended) and `Project JDK` (15 or above is recommended)

### Configuring project by adding GroupDocs.Comparison repository and library

To add Comparison API to your project, fallow next steps:
1. Open `build.gradle.kts`
2. Go to `repositories` block and add to it Maven GroupDocs repository
    ```kotlin
    maven("https://repository.groupdocs.com/repo/")
    ```
3. Go to `dependencies` block and add GroupDocs.Comparison library as dependency (*it is recommended to use [latest version](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-comparison) of the library*)
    ```kotlin
    implementation("com.groupdocs:groupdocs-comparison:22.3")
    ```
4. Refresh project libraries by clicking `Reload All Gradle Projects` button on `Gradle` panel of IDE

Now you can work with Comparison API in the project

## Adding basic Comparison functionality

In order to have opportunity of comparing files in your Desktop application, you need some basic UI elements and functionality. At least, there must be buttons to select source and target documents that would be compared. Also, you need a button, that will run comparison process.

### Basic UI elements

Firstly, create variables, in which you will store source and target document's paths. The reason of using `mutableStateOf` and `remember` can be found in Compose documentation

```kotlin
val sourcePath = remember { mutableStateOf<String?>(null) }
val targetPath = remember { mutableStateOf<String?>(null) }
```

Add button to select source file for comparing. The second button will look the same, just change text and variable. It would be a good idea to surround them with Compose `Row` or `Column` and to add some visual styles

```kotlin
Button(
    onClick = {
        // Your function to run JFileChooser dialog for selecting source file
        selectFile(sourcePath)
    }
) {
    Text(text = "Select source file".uppercase())
}
```

Add button to run comparison process

```kotlin
Button(
    onClick = {
        // Your function to run comparison process
        compareFiles(sourcePath, targetPath)
    }
) {
    Text(text = "Compare files".uppercase())
}
```

### Additional application functions

In order to select documents, your application needs file selection dialog. For now, Compose does not have its own dialogs, but don't forget that we are still in Java. In this way we van use standard Java `JFileChooser` class.

```kotlin
fun selectFile(pathState: MutableState<String?>) {
    JFileChooser().apply {
        if (showOpenDialog(null) == JFileChooser.APPROVE_OPTION) {
            pathState.value = selectedFile.path
        }
    }
}
```

This function will open dialog to select file and then set file's path to passed as parameter mutable state. JFileChooser can be configured to filter files by format, to set starting directory and so on.

### Using Comparison API to get document's differences

Comparison API has lots of functionality and settings, but we will use just few percents of it not to make this article too difficult. Comparing files and get the result is just 3 lines of code. To do it, just follow next **numbered** steps:

1. Create object of [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) class passing source document path to it.
   * Alternatively, you can create Comparer object passing to it input stream, to avoid saving source file anywhere
   * You can pass `LoadOptions("document-password")` as the second parameter to compare password-protected document
   * It is possible to pass `LoadOptions(true)` as the second parameter to create Comparer object using string, instead of file. In this way the first parameter must be a string that will be compared
   * To enable logging, pass object of `ComparerSettings` class as additional parameter. The class has useful logger field
2. Add the second document path to comparer object using the appropriate [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add-java.lang.String-) method.
   * All additional options from p.1. are also available here
3. Call the [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) method to get the comparison result of both documents.
   * To configure the comparison process, you can pass [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions), [SaveOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) or both of them. Here is just a few of settings:
     * Working with document metadata
     * Protecting result document with password
     * Configuring styles of added, deleted, changed parts of documents
     * Changing sensitivity of comparison
     * Enabling/Disabling different types of changes
     * Generating summary page
     * And [much more](/comparison/java/comparison/)

Here is the code to compare files:

```kotlin
val temporaryDirectory = Paths.get(System.getenv("TMP"))

fun compareFiles(source: State<String>, target: State<String>) {
   val sourcePath = source.value
   val targetPath = target.value
   val fileType = FileType.fromFileNameOrExtension(targetPath)
   val savePath = temporaryDirectory.resolve("Result${fileType.extension}")
   CoroutineScope(Dispatchers.IO).launch {
      // TODO: Show some progress bar
      try {

         Comparer(sourcePath).use { comparison ->
            comparison.add(targetPath)
            val resultPath = comparison.compare(savePath)
            // TODO: Hide progress bar
            withContext(Dispatchers.Main) {
               openSaveDialog(resultPath)
            }
         }

      } catch (e: Exception) {
         e.printStackTrace()
         // TODO: Show error to user
      }
   }
}
```

In the code above we use system temporary directory and static method [FileType.fromFileNameOrExtension](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/FileType#fromFileNameOrExtension-java.lang.String-), that detects file type, to create path for saving result file. You can change it to save result file to java output stream. *Note: result file here, always has the same name `Result`. It means that each comparison process will replace previous result document.* You can call [FileType.getSupportedFileTypes](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/FileType#getSupportedFileTypes--) method to get all supported document's types for the version of Comparison library you have.

### Saving resultant document to the place which client select

```kotlin
fun openSaveDialog(resultPath: Path) {
    JFileChooser().apply {
        fileFilter = FileNameExtensionFilter("Result file", resultPath.extension)
        if (showSaveDialog(null) == JFileChooser.APPROVE_OPTION) {
            val pathToSave = selectedFile.path
            // TODO: Show some progress bar
            CoroutineScope(Dispatchers.Main).launch {
                withContext(Dispatchers.IO) {
                    Files.move(resultPath, Paths.get(pathToSave))
                }
                // TODO: Hide progress bar and show user that file successfully saved
            }
        }
    }
}
```

Here we are just using JFileChooser save dialog to give user opportunity to select the place where the result file will be saved. After that we are moving the resultant file to the new place. Of course here must be added some checks and notifications, it's just example.

### More Comparison API opportunities

The minimal application functionality is already implemented. But there are lots of things which can be improved. For example, it is very easy to show source, target and result documents, show each change, give user opportunity to accept or reject any change before saving the document and so on.

#### Show images from files in Compose Desktop

Compose Desktop already has painters to show images from resources. But we need additional resource loader to show images from file. Here is just a simple example how it can be done:

```kotlin
class LocalResourceLoader : ResourceLoader {
    override fun load(resourcePath: String): InputStream = BufferedInputStream(FileInputStream(resourcePath))
}
```

And here is the example of using this loader in Compose function:

```kotlin
Image(
    modifier = Modifier
        .width(750.dp),
    contentScale = ContentScale.FillWidth,
    painter = painterResource(resourcePath = "D:\\test.png", loader = LocalResourceLoader()),
    contentDescription = "Result page"
)
```

#### Showing resultant document's pages

In order to show resultant document's pages we need to [generate previews for each page](/comparison/net/generate-document-pages-preview/). Fortunately, Comparison API has special functionality to do it.

Here is the example of generating preview images:

```kotlin
CoroutineScope(Dispatchers.Main).launch {
    val pageList = mutableListOf<String>()
    withContext(Dispatchers.IO) {
        val result = Document(resultPath)
        val previewOptions = PreviewOptions {
            val pagePath = temporaryDirectory.resolve("gd_page_${it}_preview.png")
            pageList.add(pagePath.toString())
            FileOutputStream(pagePath.toFile())
        }
        previewOptions.previewFormat = PreviewFormats.PNG
        result.generatePreview(previewOptions)
    }
    // TODO: use image's paths in `pageList` to display them in Compose UI
}
```

Class [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) has options not only to set output image format, but also to specify image's width, height, pages to process and so on.

#### Showing changes using Comparison API

As well as generating previews, [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) give opportunity to get list of changes and to accept/reject any change. To do it, you need to use method [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges-com.groupdocs.comparison.options.GetChangeOptions-) after calling [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare-java.lang.String-) method. You can pass [GetChangeOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/GetChangeOptions) to configure filter, but it is not necessary.

```kotlin
// ... creating comparer and calling .compare() method
val changes = comparer.getChanges()
changes.forEach { change ->
    println("Change ID: ${change.id}")
    println("Change text: ${change.text}")
    println("Change sourceText: ${change.sourceText}")
    println("Change targetText: ${change.targetText}")
    change.comparisonAction = ComparisonAction.ACCEPT
}
val applyChangeOptions = ApplyChangeOptions(changes)
comparer.applyChanges("D:\\updatedResult.pdf", applyChangeOptions)
```

As you above, method [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges--) returns list of changes, each of which has lots of information, as:
* [Unique id](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getId--) of the change
* [Change text](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getText--) from resultant document
* [Text before](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getSourceText--) changes
* [Text after](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getTargetText--) changes
* Coordinates [of the box](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getBox--) on the page, in which the change is located in document
* [List of style](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo#getStyleChanges--) changes
* And [so on](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ChangeInfo)

### Get a Free API License

Most of options are available only after setting the license. You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) in order to use the API without the evaluation limitations.

### Conclusion

In this article was shown only few percentage of [GroupDocs.Comparison API](https://products.groupdocs.com/comparison) functionality. To get more information, you can go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Also, on [GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java/tree/master/Demos/Compose) we have similar example of using Comparison API together with Compose Desktop framework. Reach us [on the forum](https://forum.groupdocs.com/) for your questions.

### See also

* How to [compare files](/comparison/java/how-to-compare-files-in-java-or-kotlin) in Java or Kotlin
* How to [compare images](/comparison/java/how-to-compare-images-using-java-or-kotlin) using Java or Kotlin
* How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
* How to [compare two or more files](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) in Java or Kotlin