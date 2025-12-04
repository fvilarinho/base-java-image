Synopsys
========

This a JAVA base image to build Docker containers.
It uses the `ghcr.io/fvilarinho/base-image` and adds the following:

- `openjd11-jre-base`

It also modifies the cryptography policies of the JRE to support `AES-256`.


How to use
==========

Just put the line below in your Dockerfile.

`FROM ghcr.io/fvilarinho/base-java-image:1.2.0` - To use the last stable version.

`FROM ghcr.io/fvilarinho/base-java-image:latest` - To use the development version.


License
=======

This image is licensed under the Apache 2.0. Please read the licence file or check the URL [https://www.apache.org/licenses/LICENSE-2.0.txt](https://www.apache.org/licenses/LICENSE-2.0.txt)


Contact
=======
**Website:** - https://vilanet.sh

**e-Mail:**
- fvilarinho@gmail.com
- fvilarinho@outlook.com
- me@vila.net.br

and that's all! Have fun!
