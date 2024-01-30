FROM alpine:latest

RUN apk update
RUN apk add --no-cache bash git openssh-client nodejs npm python3 yarn
RUN apk add py3-pip

RUN wget https://releases.hashicorp.com/terraform/1.7.1/terraform_1.7.1_linux_amd64.zip
RUN unzip terraform_1.7.1_linux_amd64.zip && rm terraform_1.7.1_linux_amd64.zip
RUN mv terraform /usr/bin/terraform

RUN pip3 install awscli --break-system-packages
RUN node --version
RUN npm --version
RUN terraform --version
RUN aws --version
RUN ssh -V

