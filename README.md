# OpenHSV API

This repository contains a Docker image for the node-based OpenHSV API. The image is an extension of Docker's official `node` image with packages for `loopback-cli` and `strong-deploy`/`strong-build`/`apiconnect` (StrongLoop and APIConnect). Follow these links for more information about the underlying technologies:

- [Node.js](https://nodejs.org/en/about/)
- [Loopback](https://loopback.io)
- [StrongLoop](https://strongloop.com) and [API Connect](http://www-03.ibm.com/software/products/en/api-connect)

## How to Use

```bash
# build container image and assign name
docker build -t loopback:1.0.0 .

# run container
# mount your local copy of openhsv-api server code to the container's file system
# and open to bash shell
docker run --name openhsv-api -it -v $(pwd)/openhsv:/openhsv loopback:1.0.0 /bin/bash

# install api dependencies
npm install

# run api server
node .
```
