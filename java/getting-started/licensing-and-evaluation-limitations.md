---
id: licensing-and-evaluation-limitations
url: comparison/java/licensing-and-evaluation-limitations
title: Licensing
weight: 5
description: "Follow the instructions on this page to configure the license and find out the restrictions when using GroupDocs.Comparison for Java without a license (Evaluation Limitations)"
keywords: Licensing, evaluation limitations, setsetting metered license, setting license
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Java language and GroupDocs.Comparison for Java
    productCode: comparison
    productPlatform: java
  showVideo: True
  howTo:
    name: How to Setting License in Java
    description: Learn how to Setting License in Java step by step
    steps:
      - name: Create an object
        text: Create an object of license class.
      - name: Set license
        text: Call the setLicense method of your object and put the license path or license file stream parameter.
---

Sometimes, to study the system better, you want to dive into the code as fast as possible. To make this easier, GroupDocs.Comparison provides different purchase plans or offers a Free Trial and a 30-day Temporary License for evaluation.

{{< alert style="info" >}}
Note that there are several general policies and practices that guide you on how to evaluate, properly license, and purchase our products. You can find them in the ["Purchase Policies and FAQ"](https://purchase.groupdocs.com/policies) section.
{{< /alert >}}

## Free Trial or Temporary License

You can try GroupDocs.Comparison without buying a license.

### Free Trial

The evaluation version is the same as the purchased one – the evaluation version simply becomes licensed when you set the license. You can set the license in a number of ways that described in the next sections of this article.

The evaluation version comes with the limitations:

- Only first 2 pages can be processed.
- Trial badges are placed in the document on the top of each page.

### Temporary License

If you wish to test GroupDocs.Annotation without the limitations of the trial version, you can also request a 30-day Temporary License. For details, see the ["Get a Temporary License"](https://purchase.groupdocs.com/temporary-license) page.

## How to set a license

{{< alert style="info" >}}

You can find the pricing information on the ["Pricing Information"](https://purchase.groupdocs.com/pricing/comparison/java) page.

{{< /alert >}}

After getting the license, you need to set it. This section describes different ways to set the license.

The license should be set:

- Only once per application domain.
- Before using any other of GroupDocs.Annotation classes.

{{< alert style="info" >}}

The license can be set multiple times per application domain but we recommend doing it once since all calls to `setLicense` except first will just waste processor time.

{{< /alert >}}

### Set License from File

The following code snippet shows how to set a license from file:

{{< tabs "example1">}}
{{< tab "Java" >}}

```java
import com.groupdocs.comparison.license.License;
// ...

License lic = new License();
lic.setLicense(licensePath);
```

{{< /tab >}}
{{< /tabs >}}


### Set License from Stream

The following code snippet shows how to set a license from a stream:

{{< tabs "example2">}}
{{< tab "Java" >}}

```java
import com.groupdocs.comparison.license.License;
import java.io.FileInputStream;
// ...

License lic = new License();
lic.setLicense(licenseInputStream);
```

{{< /tab >}}
{{< /tabs >}}


### Set Metered License

You can also set the [Metered](https://reference.groupdocs.com/comparison/java/groupdocs.comparison/metered/) license as an alternative to license file. It is a new licensing mechanism that will be used along with existing licensing method. It is useful for the customers who want to be billed based on the usage of the API features. For  details, please refer to the [Metered Licensing FAQ](https://purchase.groupdocs.com/faqs/licensing/metered) section.

The following code snippet shows how to use `Metered` licensing:

{{< tabs "example3">}}
{{< tab "Java" >}}

```java
import com.groupdocs.comparison.license.Metered;
// ...

String publicKey = ""; // Your public license key
String privateKey = ""; // Your private license key

Metered metered = new Metered();
metered.setMeteredKey(publicKey, privateKey);

// Get amount (MB) consumed
double amountConsumed = Metered.getConsumptionQuantity();
System.out.println("Amount (MB) consumed: " + amountConsumed);

// Get count of credits consumed
double creditsConsumed = Metered.getConsumptionCredit();
System.out.println("Credits consumed: " + creditsConsumed);
```

{{< /tab >}}
{{< /tabs >}}