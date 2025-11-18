---
id: running-in-docker
url: comparison/nodejs-java/running-in-docker
title: Running in Docker
weight: 5
description: "Learn how to run GroupDocs.Comparison for Node.js via Java inside Docker containers with examples, dependencies, and troubleshooting."
keywords: docker, dockerfile, linux, container
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

This guide shows how to run GroupDocs.Comparison for Node.js via Java inside a Docker container using a minimal example.

## Limitations

- Linux containers are recommended and fully supported.
- Ensure adequate fonts are installed in the container for accurate text layout.
- For Metered licensing, outbound internet access is required to report consumption. File-license mode works fully offline.

## Dependencies

We are going to build the Docker image in two stages to minimize the final image size. In the first stage we build the application, and in the second stage we run it.

The key dependencies for the build stage are Node.js, JDK (Java Development Kit), and build tools. The final runtime stage requires only Node.js and JRE (Java Runtime).  

## Basic Example

This is a practical example showing how to compare two documents in a Docker container using the sample code. The final Docker image can be run as an application by passing the source files for comparison, the output file name, and an optional license file. See the [Temporary License](https://purchase.groupdocs.com/temporary-license/) page for more details.

{{< alert style="info" >}}
You can download this sample application from [here](/comparison/nodejs-java/_sample_files/getting-started/running-in-docker/basic-example.zip).

{{< /alert >}}

### Project Structure

```text
📂 basic-example/
├── 📂 work/                           
│   ├── 📄 proposal_v1.docx             # Input document – first version
│   ├── 📄 proposal_v2.docx             # Input document – second version
│   └── 📄 GroupDocs.Comparison.lic     # The license file (optional)
├── 📄 .dockerignore                    # Files to exclude from Docker build context
├── 📄 Dockerfile                       # Docker container definition
├── 📄 package.json                     # Node.js project file
├── 📄 diff-files.js                    # Main application code
└── 📄 README.md                        # App readme
```

Let’s look at the most essential parts of the application:

{{< tabs "example_run_in_docker" >}}

{{< tab "diff-files.js" >}}  
{{< highlight js "" >}}

'use strict';

const groupdocs = require('@groupdocs/groupdocs.comparison');

// Get the source, target, output, and license paths from the command line arguments
const [sourcePath, targetPath, outputPath, licensePathArg] = process.argv.slice(2);

// Get the license path from the command line arguments or the environment variable
const licensePath = licensePathArg || process.env.GROUPDOCS_LICENSE_PATH;
if (licensePath) {
	const license = new groupdocs.License()
	license.setLicense(licensePath);
}

// Create a new comparer instance and add the source and target files
const comparer = new groupdocs.Comparer(sourcePath);

// Add the target file to the comparer
comparer.add(targetPath);

// Compare the source and target files and save the output to the output path
comparer.compare(outputPath);

{{< /highlight >}}
{{< /tab >}}

{{< tab "package.json" >}}  
{{< highlight json "" >}}

{
  "name": "GroupDocs.Comparison for Node.js via Java Example",
  "version": "1.0.0",
  "private": true,
  "main": "diff-files.js",
  "license": "MIT",
  "scripts": {
    "start": "node diff-files.js",
    "dev": "node diff-files.js"
  },
  "engines": {
    "node": ">=20"
  },
  "dependencies": {
    "@groupdocs/groupdocs.comparison": "^25.11.0"
  }
}

{{< /highlight >}}
{{< /tab >}}

{{< tab "Dockerfile" >}}  
{{< highlight dockerfile "" >}}

# Build stage – compiles native module and installs dependencies
FROM node:20-bullseye AS build
RUN apt-get update && apt-get install -y \
    openjdk-17-jdk-headless \
    build-essential

# Clean up cache
RUN rm -rf /var/lib/apt/lists/*

# Set JAVA_HOME and update PATH
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --omit=dev

# Copy the rest of the app
COPY . .

# Final stage – slim runtime image
FROM node:20-bullseye-slim AS final

# Install Java runtime
RUN apt-get update && apt-get install -y \
    openjdk-17-jre-headless  
    
# Clean up cache
RUN rm -rf /var/lib/apt/lists/*

# Set JAVA_HOME and update PATH
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Set working directory
WORKDIR /app

# Copy built application and node_modules from the build stage
COPY --from=build /app .

# Set the entry point and default command
ENTRYPOINT ["node", "/app/diff-files.js"]
CMD ["--help"]

{{< /highlight >}}
{{< /tab >}}

{{< tab "Input files" >}}  
{{< tab-text >}}
Sample input files [proposal_v1.docx](/comparison/nodejs-java/_sample_files/getting-started/running-in-docker/proposal_v1.docx) and [proposal_v2.docx](/comparison/nodejs-java/_sample_files/getting-started/running-in-docker/proposal_v2.docx) to compare.
{{< /tab-text >}}
{{< /tab >}}

{{< /tabs >}}

### Building the Docker Image

To create the Docker image, run the following command in the directory containing the `Dockerfile`:

```bash
docker build -t groupdocs-comparison-sample:latest .
```

### Running the Application

In this example we mount the `work` directory and use it both to pass source files into the container and to store the comparison result.

If you do not have a license file, you can use the following command that omits the last parameter. GroupDocs.Comparison will work in trial mode.

```bash
docker run --rm -v "${pwd}/work:/work" -w /work groupdocs-comparison-sample:latest proposal_v1.docx proposal_v2.docx proposal_diff.docx
```

You can add a license parameter if you have a trial or full license file:

```bash
docker run --rm -v "${pwd}/work:/work" -w /work groupdocs-comparison-sample:latest proposal_v1.docx proposal_v2.docx proposal_diff.docx GroupDocs.Comparison.lic
```

#### Command Explanation

- `--rm`: Automatically removes the container when it exits
- `-v`: Mounts the host directory to the container directory for file output
- `-w`: Sets the working directory inside container

### App Output

The app compares two DOCX files and outputs [proposal_diff.docx](/comparison/nodejs-java/_sample_files/getting-started/running-in-docker/proposal_diff.docx) in the `work` folder. The output file contains differences and a summary page on changes. 

## Troubleshooting

### Font Issues

If you encounter missing glyphs or layout differences, install additional fonts:

```dockerfile
RUN apt-get update && apt-get install -y fonts-liberation fonts-dejavu-core && rm -rf /var/lib/apt/lists/*
```

### node-gyp Build Errors

- Ensure `build-essential` and `python3` are installed.
- Rebuild if needed: `npm rebuild`.

### Java Not Found

- Confirm OpenJDK is installed and `JAVA_HOME`/`PATH` are set in the image.

### Permissions or Volume Mounts

- Verify the mounted directories exist and are writable by the container user.

---

For general setup details, see [System Requirements]({{< ref "comparison/nodejs-java/getting-started/system-requirements" >}}) and [Installation]({{< ref "comparison/nodejs-java/getting-started/installation" >}}).
