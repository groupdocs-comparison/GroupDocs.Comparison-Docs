---
id: non-windows-launch
url: comparison/net/non-windows-launch
title: Non-Windows Launch
weight: 5
description: "On this page you will find information how to run GroupDocs.Comparison for .NET in the Docker."
keywords: docker, dockerfile, linux
productName: GroupDocs.Comparison for .NET
hideChildren: False
toc: True
---

## Limitations

If the target framework is .NET 6 or over, due to limitations in the System.Drawing.Common version 6.0.0 (see [Microsoft documentation](https://learn.microsoft.com/en-us/dotnet/core/compatibility/core-libraries/6.0/system-drawing-common-windows-only#new-behavior)), you need to add the following setting to the `.csproj` file.

```csharp
<ItemGroup>
	<RuntimeHostConfigurationOption Include="System.Drawing.EnableUnixSupport" Value="true" />
</ItemGroup>
```

## Recommendations

When using GroupDocs.Comparison in a non-Windows environment, the following packages should be installed to improve rendering results and prevent possible runtime errors:

1. libgdiplus - is the Mono library that provides a GDI+-compatible API on non-Windows operating systems.
2. ttf-mscorefonts-installer - package with Microsoft compatible fonts, because GroupDocs.Comparison uses Aril font in the some default scenarios.

To install packages on Debian-based Linux distributions use [apt-get](https://wiki.debian.org/apt-get) utility:

1. sudo apt-get install libgdiplus
2. sudo apt-get install ttf-mscorefonts-installer

## How to run in the Docker

Running GroupDocs.Comparison in Docker is straightforward. All you need to do is add the installation of the packages described in the previous paragraph to the docker file.

### .NET 6 in Docker
An example beginning of the Dockerfile might look like this:

```Dockerfile
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80

# Add libgdiplus for graphics support
RUN apt-get update && apt-get install -y apt-utils libgdiplus

# Add `contrib` archive area to package sources list
RUN sed -i'.bak' 's/$/ contrib/' /etc/apt/sources.list
# Add fonts
RUN apt-get update; apt-get install -y ttf-mscorefonts-installer fontconfig
RUN fc-cache -f -v

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
# etc
```
**fontconfig:** This library configures and customizes font access.

**ttf-mscorefonts-installer:** This package provides Microsoft TrueType core fonts. It's available in the [contrib](https://www.debian.org/doc/debian-policy/ch-archive#s-contrib) archive area. (Note: Using non-free fonts may have licensing implications, so be sure to check the license terms.)

### .NET 8 in Docker
In the .NET 8 Dockerfile, there are some changes in the way ttf-mscorefonts-installer is installed.

```Dockerfile
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 8080

# Add libgdiplus for graphics support
RUN apt-get update && apt-get install -y libgdiplus

RUN apt install software-properties-common -y
RUN echo "deb http://deb.debian.org/debian bookworm contrib non-free" > /etc/apt/sources.list.d/contrib.list
RUN apt update && apt upgrade
# Add fonts
RUN apt install ttf-mscorefonts-installer -y

# This stage is used to build the service project
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
# etc
```
