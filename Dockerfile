FROM alpine:3.7

RUN apk update && apk add autossh openssh-client bash

RUN mkdir /root/.ssh && chmod -R go-rwx /root/.ssh

#CMD ["ssh"]