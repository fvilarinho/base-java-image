FROM ghcr.io/concepting-com-br/base-image:1.1.0

LABEL maintainer="fvilarinho@concepting.com.br"

USER root 

RUN apk update && \
    apk --no-cache \
        --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing \
        add nss \
            openjdk11-jre       
                       
COPY lib/local_policy.jar ${LIB_DIR}/
COPY lib/US_export_policy.jar ${LIB_DIR}/
COPY .env ${ETC_DIR}/.release

RUN chown -R user:group ${HOME_DIR} && \
    chmod -R o-rwx ${HOME_DIR} && \
    rm -f /usr/lib/jvm/default-jvm/jre/lib/security/local_policy.jar && \
    rm -f /usr/lib/jvm/default-jvm/jre/lib/security/US_export_policy.jar && \
    ln -s ${LIB_DIR}/local_policy.jar /usr/lib/jvm/default-jvm/jre/lib/security/local_policy.jar && \
    ln -s ${LIB_DIR}/US_export_policy.jar /usr/lib/jvm/default-jvm/jre/lib/security/US_export_policy.jar

USER user