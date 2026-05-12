FROM swr.cn-north-4.myhuaweicloud.com/ddn-k8s/docker.io/kubesphere/ks-installer:v3.3.2

USER root

COPY ./kubesphere/kubesphere /kubesphere/kubesphere
COPY ./kubesphere/installer /kubesphere/installer

RUN chown kubesphere:kubesphere -R /kubesphere/kubesphere && chown kubesphere:kubesphere -R /kubesphere/installer

USER kubesphere 