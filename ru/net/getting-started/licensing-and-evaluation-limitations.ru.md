---
id: ограничения лицензирования и оценки
url: comparison/net/licensing-and-evaluation-limitations
title: "Лицензирование и ограничения оценки"
weight: 5
description: "Следуйте инструкциям на этом сайте, чтобы настроить лицензию и узнать ограничения при использовании GroupDocs.Comparison для .NET без лицензии (Ограничения оценки)"
keywords: "Лицензирование, ограничения пробной версии, установка лимитной лицензии, установка лицензии"
productName: GroupDocs.Comparison для .NET
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
Название: Сравнение документов
      description: "Сравнивайте документы изначально с высокой производительностью, используя язык C# и GroupDocs.Comparison для .NET."
код продукта: сравнение
продуктПлатформа: чистая
показатьВидео: Правда
как:
название: Как установить лицензию в .NET
      description: "Узнайте, как установить лицензию в .NET шаг за шагом"
шаги:
- имя: Создать объект
текст: Создать объект лицензионного класса.
- имя: Установить лицензию
текст: Вызовите метод SetLicense вашего объекта и укажите путь к лицензии или параметр потока файла лицензии.
---
{{< alert style="info" >}}Вы можете использовать GroupDocs.Comparison без лицензии. Использование и функциональные возможности почти такие же, как у лицензированного, но вы столкнетесь с некоторыми ограничениями при использовании нелицензионного API.{{< /alert >}}

## Ограничения оценки

Вы можете легко загрузить **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** для ознакомления. Ознакомительная загрузка аналогична купленной загрузке. Ознакомительная версия просто становится лицензионной, когда вы добавляете несколько строк кода для применения лицензии. При использовании API без лицензии вы столкнетесь со следующими ограничениями:

* Обрабатываются только первые 3 страницы документа с простой структурой.
* Документы PDF не должны содержать более четырех элементов в любой коллекции.
* Пробные значки размещаются в документе вверху каждой страницы.

## Лицензирование

Файл лицензии содержит такие сведения, как название продукта, количество разработчиков, для которых он лицензируется, срок действия подписки и т. д. Он содержит цифровую подпись, поэтому не изменяйте файл. Даже непреднамеренное добавление дополнительного разрыва строки в файл сделает его недействительным. Вам необходимо установить лицензию перед использованием API GroupDocs.Comparison, если вы хотите избежать ограничений его оценки.
Лицензия может быть загружена из файла или потокового объекта. Самый простой способ установить лицензию — поместить файл лицензии в ту же папку, что и файл GroupDocs.Comparison.dll, и указать имя файла без пути, как показано в примерах ниже.

#### Установка лицензии из файла

В приведенном ниже коде поясняется, как установить лицензию на продукт.

```csharp
// For complete examples and data files, please go to https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET
// Setup license.
License license = new License();
license.SetLicense(licensePath);
```

#### Установка лицензии из потока

В следующем примере показано, как загрузить лицензию из потока.

```csharp
// For complete examples and data files, please go to https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET
using (FileStream fileStream = File.OpenRead("GroupDocs.Comparison.lic"))
{
    License license = new License();
    license.SetLicense(fileStream);
}
```

{{< alert style="info" >}}Вызов License.SetLicense несколько раз не наносит вреда, а просто тратит процессорное время. Если вы разрабатываете Windows Forms или консольное приложение, вызовите License.SetLicense в коде запуска, прежде чем использовать классы GroupDocs.Comparison. При разработке приложения ASP.NET можно вызвать License.SetLicense из файла Global.asax.cs (Global.asax.vb) в защищенном методе Application_Start. Он вызывается один раз при запуске приложения. Не вызывайте License.SetLicense из методов Page_Load, так как это означает, что лицензия будет загружаться каждый раз при загрузке веб-страницы.{{< /alert >}}

#### Установка лимитной лицензии

{{< alert style="info" >}}Вы также можете установить лимитную лицензию в качестве альтернативы файлу лицензии. Это новый механизм лицензирования, который будет использоваться вместе с существующим методом лицензирования. Это полезно для клиентов, которые хотят получать счета на основе использования функций API. Дополнительную информацию см. в разделе часто задаваемых вопросов о лицензировании по счетчику.{{< /alert >}}

Вот простые шаги по использованию класса `Metered`.

1. Создайте экземпляр класса `Metered`.
2. Передайте открытый и закрытый ключи методу SetMeteredKey.
3. Сделать обработку (выполнить задание).
4. вызвать метод `GetConsumptionQuantity` класса `Metered`.
5. Он вернет количество/количество запросов API, которые вы использовали до сих пор.
6. вызвать метод `GetConsummentCredit` класса `Metered`.
7. Это вернет кредит, который вы использовали до сих пор.

Ниже приведен пример кода, демонстрирующий использование класса `Metered`.

```csharp
// For complete examples and data files, please go to https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET
string publicKey = ""; // Your public license key
string privateKey = ""; // Your private license key

Metered metered = new Metered();
metered.SetMeteredKey(publicKey, privateKey);

// Get amount (MB) consumed
decimal amountConsumed = GroupDocs.Comparison.Metered.GetConsumptionQuantity();
Console.WriteLine("Amount (MB) consumed: " + amountConsumed);

// Get count of credits consumed
decimal creditsConsumed = GroupDocs.Comparison.Metered.GetConsumptionCredit();
Console.WriteLine("Credits consumed: " + creditsConsumed);
```

