FROM amazon/aws-cli:latest

RUN yum update -y \
    && yum install -y jq curl git python3 zip tar \
    && yum clean all
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN pip3 install boto3
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
