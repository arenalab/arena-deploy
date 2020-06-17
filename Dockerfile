FROM amazon/aws-cli

RUN yum update
RUN yum install -y jq curl git python3
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN pip3 install boto3
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
