---
id: как-сравнить-текст-слово-pdf-в-java-или-котлин
url: comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin
title: "Как сравнить текст, Word, PDF с Java или Kotlin"
weight: 8
description: "Вы узнаете, как можно использовать GroupDocs.Comparison для Java в своей работе при сравнении файлов Text, Word и PDF, чтобы увидеть различия. Ознакомьтесь с конфигурацией чувствительности к сравнению файлов и другими вариантами использования API GroupDocs.Comparison."
keywords: "Сравните текст, сравните Word, сравните Pdf, как сравнить документы в Java, Kotlin"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
имя: Сравните текстовые документы
        description: "Продукт позволяет сравнивать документы Word или PDF."
код продукта: сравнение
Платформа продукта: Java
как:
имя:
        description: "Узнайте, как сравнивать документы Word или PDF в проекте Java или Kotlin."
шаги:
- имя: Загрузить исходное слово или PDF-документ
текст: Создайте экземпляр класса Comparer, передав исходное слово или документ PDF в качестве параметра конструктора.
- имя: Загрузить целевое слово или PDF-документы
текст: добавьте один или несколько целевых документов Word или PDF, чтобы сравнить их с исходным.
- имя: сравнение исходного и целевого документов в формате Word или PDF.
текст: Запустить процесс сравнения, передав путь, где будет сохранен результат сравнения
---
Прочитав эту статью, вы сможете сравнивать текстовые файлы, файлы Word, файлы PDF и другие документы в приложениях на основе Java. Используя эту функцию, мы можем сравнивать счета-фактуры, контракты, презентации, проекты AutoCAD, прайс-листы или программные файлы. У нас также будет возможность выделить выявленные изменения и принять или отклонить любое изменение. Вы даже можете создать собственный [инструмент сравнения документов](https://products.groupdocs.app/comparison/total), аналогичный тому, который запущен GroupDocs, используя API сравнения документов для Java.

## API сравнения документов Java

В качестве предварительного условия вы можете получить [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) из [раздела загрузок](https://downloads.groupdocs.com/comparison/ Ява). Кроме того, вы можете легко добавить Comparison API в свой проект Maven, Gradle или Kotlin DSL, следуя [инструкциям по установке](/comparison/java/installation/).

### Сравните файлы Word и покажите различия с помощью Java или Kotlin

Шаги ниже покажут вам, как сравнить любые два документа Word всего за несколько строк кода Java или Kotlin. В результате вы получите результирующий документ, в котором будут выделены выявленные изменения.

* Инициализируйте объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer), указав путь к исходному документу.
* Добавьте второй документ для сравнения, используя метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) программы Comparer. объект.
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) для получения результата сравнения. Метод сравнения принимает в качестве параметра имя выходного документа.

---

<details open><summary>В приведенном ниже коде показано, как сравнить два документа Word в Java.</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/e449c06565647b3cdaed7511da401478.js"></script>

</details>

<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/fdc16a21af9b8d6900d1a369b3c1cafd.js"></script>

</details>
</blockquote></details>

---

Вот пример результирующего документа Word, сгенерированного кодом выше. Он содержит выделенные отличия сравниваемых документов. Удаленный контент будет отмечен красным, добавленный контент будет отображаться синим, однако измененный контент будет отображаться зеленым цветом.

![Word documents comparison result](/comparison/java/images/how-to-compare-documents.png)

### Сравнение файлов Word с использованием потоков Java или Kotlin

Аналогичным образом вы можете передать документ в виде потока классу Comparer, чтобы сравнить его со вторым документом.

---

<details open><summary>Вот код Java/Kotlin, чтобы дать вам четкое представление</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/6afc74d39ca3045cc8c693c41907d76e.js"></script>

</details>

<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/37db39ac21988d21259ef7e8039a3298.js"></script>

</details>
</blockquote></details>

---

_Использование потоков может быть полезно для сравнения документов без сохранения их на диске_

### Принятие или отклонение изменений в файле Word с помощью Java или Kotlin

После сравнения документов у вас есть возможность принять или отклонить любое изменение. Ниже вы можете увидеть пример поочередного принятия и отклонения изменений. Вы можете отображать каждое изменение одно за другим с похожим кодом и принимать решения о принятии/отклонении каждого изменения в соответствии с вашими требованиями.

---

<details open><summary>Вот код Java/Kotlin, чтобы дать вам четкое представление</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/34d8fa500b337c43f968bf18fd8527a5.js"></script>

</details>

<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/f3b12253aafaf6c4a4a862b2ea206331.js"></script>

</details>
</blockquote></details>

---

_Более подробную информацию о принятии и отклонении изменений можно найти в [документации](https://docs.groupdocs.com/comparison/java/accept-or-reject-detected-changes/)_

### Сравните текстовые файлы и покажите различия с помощью Java или Kotlin

Используя класс [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer), мы также можем сравнивать любые текстовые файлы. Ниже приведен аналогичный код для сравнения двух текстовых файлов на Java или Kotlin. Шаги точно такие же, как и при сравнении любых других двух документов:

* Инициализировать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с исходным текстовым файлом.
* Добавьте второй файл, используя метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) объекта Comparer.
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) для получения результата сравнения.

---

<details open><summary>В приведенном ниже коде показано, как сравнить два текстовых файла в Java или Kotlin.</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/0ceff72d9ce7fb91f457bfb670852981.js"></script>

</details>

<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/46542d922b12c025aab2cd62486f8278.js"></script>

</details>
</blockquote></details>

---

Вот исходный, целевой и выходной текстовые файлы, которые показывают результат сравнения двух текстовых файлов с использованием приведенного выше кода.

![Comparing text files](/comparison/java/images/how-to-compare-text-files.png)

Вот [список всех форматов файлов](https://docs.groupdocs.com/comparison/java/supported-document-formats/), поддерживаемых [GroupDocs.Comparison for Java](https://products.groupdocs. com/сравнение/java)

### Сравните PDF-файлы на наличие текстовых различий с помощью Java или Kotlin

Мы можем сравнивать PDF-файлы, используя один и тот же код, просто изменив расширение файла на «.pdf».

---

<details open><summary>Код ниже сравнивает два файла PDF и показывает различия</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/4a1f80dd89b4d12f62e8423e09733ea7.js"></script>

</details>

<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/b0d4823f85f0ea9370dfbdd421664e90.js"></script>

</details>
</blockquote></details>

---

Вот результат сравнения двух файлов PDF на Java или Kotlin.

![Comparing text files](/comparison/java/images/how-to-compare-pdf-files-using-java-or-kotlin.png)

Многие другие примеры с открытым исходным кодом доступны в [репозитории GitHub] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). Вы можете загрузить и быстро запустить примеры, используя руководство [начало работы](https://docs.groupdocs.com/comparison/java/getting-started/). В случае возникновения каких-либо вопросов ознакомьтесь с [документацией](https://docs.groupdocs.com/comparison/java/groupdocs-comparison-overview/) или свяжитесь с нами в любое время [на форуме](https:// forum.groupdocs.com/c/conversion/).

### Смотрите также

* Как [сравнить файлы](/comparison/java/how-to-compare-files-in-java-or-kotlin) в Java или Kotlin
* Как [сравнивать изображения](/comparison/java/how-to-compare-images-using-java-or-kotlin) с помощью Java или Kotlin
* Как [сравнить два или более файлов](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) в Java или Kotlin
* Как [найти различия в фотографиях](/comparison/java/how-to-spot-photos-differences-in-java-or-kotlin) в Java или Kotlin
* How to [compare any files](/comparison/java/how-to-compare-any-files-using-compose-desktop) using Compose Desktop
