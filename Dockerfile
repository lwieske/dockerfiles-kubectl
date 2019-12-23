FROM alpine

ARG VERSION
ARG COMMIT
ARG URL
ARG BRANCH
ARG DATE

LABEL       org.label-schema.name="kubectl"                                                         \
            org.label-schema.description="kubectl - swiss army knife (cli) for kubernetes clusters" \
            org.label-schema.build-date=$DATE                                                       \
            org.label-schema.vcs-ref=$COMMIT                                                        \
            org.label-schema.vcs-url=$URL                                                           \
            org.label-schema.vendor="@lwieske"

RUN \
            addgroup -g 1000 -S user                                 && \
            adduser -S -G user -u 1000 -s /bin/sh -h /home/user user && \
            mkdir -p /home/user/bin /home/user/.kube

ADD https://storage.googleapis.com/kubernetes-release/release/$VERSION/bin/linux/amd64/kubectl /home/user/bin

RUN \
            chmod u+x /home/user/bin/kubectl                                                     && \
            chown -R user:user /home/user

USER        user
ENV         HOME    /home/user
ENV         USER    user
ENV         PATH    "/home/user/bin:${PATH}"

WORKDIR     /home/user
VOLUME      /home/user/.kube

ENTRYPOINT  ["/home/user/bin/kubectl"]