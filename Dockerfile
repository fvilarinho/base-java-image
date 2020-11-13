FROM ghcr.io/concepting-com-br/base-image:1.0.0

LABEL maintainer="fvilarinho@concepting.com.br"

USER root

RUN apk update && \
    apk --no-cache add nss \
                       openjdk8-jre-base       
                       
COPY lib/local_policy.jar ${LIB_DIR}/
COPY lib/US_export_policy.jar ${LIB_DIR}/

RUN rm -f /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/local_policy.jar && \
    rm -f /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/US_export_policy.jar && \
    ln -s ${LIB_DIR}/local_policy.jar /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/local_policy.jar && \
    ln -s ${LIB_DIR}/US_export_policy.jar /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/US_export_policy.jar
    
USER user