---
id: licensing-and-subscription
url: comparison/python-net/getting-started/licensing-and-subscription
title: Licensing and Subscription
linkTitle: Licensing and subscription
weight: 5
description: "Configure a GroupDocs.Comparison license in your Python application. Covers file-based, stream-based, and metered licensing, plus evaluation-mode limitations."
keywords: licensing, set license, metered license, evaluation, temporary license, GroupDocs.Comparison
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/getting-started/licensing-and-evaluation-limitations/
    - /comparison/python-net/licensing-and-evaluation-limitations/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  howTo:
    name: How to set a license in Python
    description: Apply a GroupDocs.Comparison license from a file, a stream, or a metered key.
    steps:
      - name: Create a License object
        text: Instantiate the License class from groupdocs.comparison.
      - name: Apply the license
        text: Call set_license() with the file path or stream of your .lic file.
---

GroupDocs.Comparison for Python via .NET runs in evaluation mode out of the box. To unlock the full feature set, apply a license at the start of your application.

{{< alert style="info" >}}
General purchase and evaluation policies are documented in the [Purchase Policies and FAQ](https://purchase.groupdocs.com/policies) section.
{{< /alert >}}

## Free trial and temporary license

You can try GroupDocs.Comparison without buying a license. The evaluation build is the same as the licensed build — applying a license simply removes the trial restrictions.

### Evaluation mode limitations

- Only the first two pages of each document are processed.
- Trial badges are stamped on the top of every output page.

### 30-day temporary license

For unrestricted evaluation, request a free 30-day [temporary license](https://purchase.groupdocs.com/temporary-license).

## How to set a license

{{< alert style="info" >}}
The license should be set **once per process**, **before** any other GroupDocs.Comparison class is used. Calling `set_license()` multiple times in the same process is harmless but wasteful — subsequent calls are no-ops.
{{< /alert >}}

### Set license from a file

The example guards the call with an `os.path.exists` check so the script fails loudly when the license file is missing instead of raising an opaque runtime error from the .NET layer.

{{< tabs "set-license-from-file">}}
{{< tab "set_license_from_file.py" >}}
```python
import os
from groupdocs.comparison import License

def set_license_from_file():
    # Absolute path to the license file
    license_path = os.path.abspath("./GroupDocs.Comparison.Python.lic")

    if not os.path.exists(license_path):
        print(f"License file not found: {license_path}")
        print("Place a valid .lic file at that path or set GROUPDOCS_LIC_PATH.")
        return

    # Instantiate License and apply the file
    license = License()
    license.set_license(license_path)
    print(f"License applied from: {license_path}")

if __name__ == "__main__":
    set_license_from_file()
```
{{< /tab >}}
{{< /tabs >}}

### Set license from a stream

Same existence guard — if the `.lic` file isn't there, the script exits cleanly with a human-readable message instead of failing inside the stream-open call.

{{< tabs "set-license-from-stream">}}
{{< tab "set_license_from_stream.py" >}}
```python
import os
from groupdocs.comparison import License

def set_license_from_stream():
    # Absolute path to the license file
    license_path = os.path.abspath("./GroupDocs.Comparison.Python.lic")

    if not os.path.exists(license_path):
        print(f"License file not found: {license_path}")
        print("Place a valid .lic file at that path or set GROUPDOCS_LIC_PATH.")
        return

    # Open the license file as a binary stream and apply it
    with open(license_path, "rb") as license_stream:
        license = License()
        license.set_license(license_stream)
        print(f"License applied from stream: {license_path}")

if __name__ == "__main__":
    set_license_from_stream()
```
{{< /tab >}}
{{< /tabs >}}

### Set license from the GROUPDOCS_LIC_PATH environment variable

For applications that should pick up a license without code changes, set `GROUPDOCS_LIC_PATH` and load it explicitly at startup:

```bash
export GROUPDOCS_LIC_PATH="/path/to/GroupDocs.Comparison.Python.lic"
```

```python
import os
from groupdocs.comparison import License

def apply_license_from_env():
    lic_path = os.environ.get("GROUPDOCS_LIC_PATH")

    if not lic_path:
        print("GROUPDOCS_LIC_PATH is not set — running in evaluation mode.")
        return

    if not os.path.isfile(lic_path):
        print(f"GROUPDOCS_LIC_PATH points at a missing file: {lic_path}")
        return

    License().set_license(lic_path)
    print(f"License applied from: {lic_path}")

if __name__ == "__main__":
    apply_license_from_env()
```

## Metered license

A [metered license](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison/metered) is an alternative usage-based licensing model: you are billed on the volume of data processed rather than per developer. See the [metered licensing FAQ](https://purchase.groupdocs.com/faqs/licensing/metered) for details.

Replace the placeholder `public_key` and `private_key` values with the credentials issued to you — the example guards against the placeholder values and exits with a message if they haven't been edited:

{{< tabs "set-metered-license">}}
{{< tab "set_metered_license.py" >}}
```python
from groupdocs.comparison import Metered

PLACEHOLDER = "*****"

def set_metered_license():
    # Set your public and private metered keys
    public_key = PLACEHOLDER
    private_key = PLACEHOLDER

    if public_key == PLACEHOLDER or private_key == PLACEHOLDER:
        print("Metered keys must be set before running this example.")
        print("Edit public_key and private_key with the credentials from")
        print("https://purchase.groupdocs.com/ to enable metered licensing.")
        return

    # Instantiate Metered and apply the keys
    metered = Metered()
    metered.set_metered_key(public_key, private_key)

    # Inspect usage so far
    mb_processed = metered.get_consumption_quantity()
    credits_used = metered.get_consumption_credit()
    print(f"MB processed: {mb_processed}")
    print(f"Credits used: {credits_used}")

if __name__ == "__main__":
    set_metered_license()
```
{{< /tab >}}
{{< /tabs >}}

## Pricing

Pricing information for GroupDocs.Comparison subscriptions is available at the [pricing page](https://purchase.groupdocs.com/pricing/comparison/python-net).
