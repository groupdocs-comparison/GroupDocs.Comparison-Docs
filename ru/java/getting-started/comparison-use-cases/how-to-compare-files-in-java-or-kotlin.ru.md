---
id: как сравнить файлы в java или kotlin
url: comparison/java/how-to-compare-files-in-java-or-kotlin
title: "Как сравнивать файлы в Java или Kotlin"
weight: 9
description: "Вы узнаете, как можно использовать GroupDocs.Comparison для Java, чтобы увидеть различия в нескольких файлах или документах. Механизм обнаружения изменений может быть настроен в соответствии с требованиями"
keywords: "Сравните текст, сравните Word, сравните Pdf, как сравнить документы в Java, Kotlin"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
имя: Файлы diff
        description: "Продукт позволяет сравнивать файлы"
код продукта: сравнение
Платформа продукта: Java
как:
название: Как проверить, идентичны ли два файла
        description: "Узнайте, как проверить, идентичны ли два файла в проекте Java или Kotlin."
шаги:
- имя: Загрузить исходный файл
текст: создать экземпляр класса Comparer, передав исходный файл в качестве параметра конструктора.
- имя: Загрузить целевые файлы
текст: добавьте один или несколько целевых файлов, чтобы сравнить их с исходным
- имя: Сравните исходный и целевой файлы
текст: запустить процесс сравнения, передав путь, где должен быть сохранен файл результата
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) — это библиотека Java, которая позволяет сравнивать документы и видеть различия. Сравнивайте Microsoft Word, Excel, PowerPoint, OpenDocument, PDF, Text, HTML и многие другие документы, получайте список изменений между исходным и целевым документами, применяйте или отклоняйте изменения и сохраняйте результаты с помощью [GroupDocs.Comparison](https://products .groupdocs.com/comparison) API. В дополнение к этому, GroupDocs.Comparison может идентифицировать изменения стиля и форматирования, такие как жирный шрифт, курсив, подчеркивание, зачеркивание, типы шрифтов и т. д.

Алгоритмы обнаружения изменений, используемые GroupDocs.Comparison, позволяют обнаруживать различия в различных частях и блоках документа:

* Текстовые блоки – абзацы, слова и символы
* Столы
* Картинки
* Формы и т.д.

Вот простые шаги, чтобы сравнить два текстовых файла и показать различия:

* Инициализировать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с исходным документом.
* Добавьте второй файл, используя метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) объекта Comparer.
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) для получения результата сравнения.

Следующий фрагмент кода демонстрирует простейший случай сравнения документов с помощью пары строк кода.

---

<details open><summary>Сравните документы, используя локальные файлы</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/e449c06565647b3cdaed7511da401478.js"></script>

</details>

<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/fdc16a21af9b8d6900d1a369b3c1cafd.js"></script>

</details>
</blockquote></details>

---

Вы также можете использовать потоки для сравнения документов. Не только поток файлов, нет проблем со сравнением файлов из Интернета без их локального сохранения или сравнением файлов на лету.

---

<details open><summary>Сравните документы с помощью потоков</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/6afc74d39ca3045cc8c693c41907d76e.js"></script>

</details>

<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/37db39ac21988d21259ef7e8039a3298.js"></script>

</details>
</blockquote></details>

---

Допустим, у вас есть два договора в формате DOCX, которые были заключены в разные годы. Если вы используете приведенный выше код для сравнения этих контрактов, вы получите файл DOCX, в котором удаленные элементы отмечены красным, добавлены синим и изменены зеленым, как показано ниже:

![Comparing two contracts](comparison/java/images/how-to-get-diff-of-contracts.png)


## Принять или отклонить обнаруженные различия

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) позволяет применять или отменять определенные изменения между исходным и целевым документами и сохранять результирующий документ с выбранными изменениями (или без них).

Ниже приведены шаги для применения/отклонения изменений в результирующем документе.

* Создание объекта [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа.
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) и укажите путь или поток целевого документа.
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) для процесса сравнения.
* Вызовите метод [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()) и получите список обнаруженных изменений.
* Установите для ComparisonAction необходимого объекта изменения значение [ComparisonAction.ACCEPT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#ACCEPT) или [ComparisonAction.Reject](https:/ /apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#REJECT).
* Вызов метода [applyChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#applyChanges(java.lang.String,%20com.groupdocs.comparison.options.ApplyChangeOptions)) и передать объект [ApplyChangeOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ApplyChangeOptions) с коллекцией изменений к нему.

---

<details open><summary>В следующем примере кода показано, как принять или отклонить обнаруженные различия.</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/34d8fa500b337c43f968bf18fd8527a5.js"></script>

</details>

<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/f3b12253aafaf6c4a4a862b2ea206331.js"></script>

</details>
</blockquote></details>

---

### Создание предварительного просмотра страниц документа

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) позволяет создавать превью страниц для исходных, целевых и результирующих документов с помощью [generatePreview](https://apireference.groupdocs.com/comparison/java/com .groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)) метод класса [Document](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document) .
Класс [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) используется для управления процессом создания предварительного просмотра — укажите номера страниц, формат изображения и т. д.

Следующие шаги показывают, как создать предварительный просмотр документа с помощью API [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java):

* Создайте новый экземпляр класса [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) и передайте путь к исходному документу в качестве параметра конструктора.
* Добавьте целевой документ(ы) в объект сравнения, используя метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) .
* [getSource](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getSource()) и [getTargets](https://apireference.groupdocs.com/comparison/java/ com.groupdocs.comparison/Comparer#getTargets()) объекта [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) позволяет получить доступ к исходным и целевым документам и предоставляет Метод [GeneratePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions))
* Создайте объект [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) с помощью:
* обратный вызов для создания каждого потока страниц (см. обработчик события [CreatePageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.common.delegates/Delegates.CreatePageStream));
* формат предварительного просмотра изображения – PNG/JPG/BMP;
* номера страниц для обработки;
* нестандартный размер изображений для предварительного просмотра (при необходимости).
* Вызовите [generatePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)) метод dource и target [Document]( https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document) объекты, передающие [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ PreviewOptions).

---

<details open><summary>Получить предварительный просмотр страниц для результирующего документа</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/565efa20595c05ecb81d9ca44045afdf.js"></script>

</details>

<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/fc4c8a219bdd0419222bd76275219fd2.js"></script>

</details>
</blockquote></details>

---

### Сравнить несколько документов

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) позволяет сравнивать более двух документов. В следующем примере кода показано, как программно сравнить несколько документов.

---

<details open><summary>Как сравнить несколько документов в Java</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/7b6ad368a55e6df16c2f0b9d86edebe5.js"></script>

</details>

<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/ad47af4d760d17752962f86be72fb8ec.js"></script>

</details>
</blockquote></details>

---

## Монтаж

Maven — это самый простой способ загрузить и установить [GroupDocs.Comparison для Java] (https://products.groupdocs.com/comparison/java). Пожалуйста, получите [временную лицензию](https://purchase.groupdocs.com/temporary-license), чтобы протестировать библиотеку без каких-либо функциональных ограничений.

Пожалуйста, ознакомьтесь с [документацией](/comparison/java/installation/), чтобы узнать больше о библиотеке. Мы также предлагаем бесплатную техническую поддержку, поэтому, пожалуйста, [свяжитесь с нами] (https://forum.groupdocs.com/) — мы будем рады помочь.

### Смотрите также

* Как [сравнивать изображения](/comparison/java/how-to-compare-images-using-java-or-kotlin) с помощью Java или Kotlin
* Как [сравнить текст, Word или PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) в Java или Kotlin
* Как [сравнить два или более файлов](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) в Java или Kotlin
* Как [найти различия в фотографиях](/comparison/java/how-to-spot-photos-differences-in-java-or-kotlin) в Java или Kotlin
* How to [compare Json files](/comparison/java/how-to-compare-json-applying-rejecting-changes) applying or rejecting changes
