FROM amazon/aws-cli:latest

RUN yum update -y \
    && yum install -y jq curl git python3 zip tar \
    && yum clean all
RUN pip3 install boto3
RUN curl -LO https://dl.k8s.io/release/v1.21.2/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
