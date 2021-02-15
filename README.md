Synopsys
========

This a JAVA base image to build Docker containers.
It uses the `ghcr.io/concepting-com-br/base-image` and adds the following:

- `openjd11-jre-base`

It also modifies the cryptography policies of the JRE to support `AES-256`.


Build status
============

![CI/CD](https://github.com/concepting-com-br/base-java-image/workflows/Docker/badge.svg)


How to use
==========

Just put the line below in your Dockerfile.

`FROM ghcr.io/concepting-com-br/base-java-image:1.0.0` - To use the last stable version.

`FROM ghcr.io/concepting-com-br/base-java-image:latest` - To use the development version.


License
=======

This image is licensed under the Apache 2.0. Please read the licence file or check the URL [https://www.apache.org/licenses/LICENSE-2.0.txt](https://www.apache.org/licenses/LICENSE-2.0.txt)


Author
======

My name is Felipe Vilarinho (A.K.A Vila) and you can know more about me at the social medias below:

1. [LinkedIn](https://br.linkedin.com/in/fvilarinho)

Or send an email to fvilarinho@gmail.com or fvilarinho@concepting.com.br

Have Fun!

Best