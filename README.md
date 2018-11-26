# Code

Docker build environment to build vscode from source with custom resources (product.json, icons, theme etc.).

## Setup
Any custom resources go into the `custom_data` folder, they will be copied directly into the vscode root directory.
For example, to use a custom product.json with endpoints for the extension marketplace, put it into custom_data/product.json.

## Build
```
source build.sh && source run.sh
```

`build.sh` builds the docker container, `run.sh` runs it and executes the build script inside.
The finished build will be copied outside of the container into `/out`.
