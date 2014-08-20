FROM centos:latest
MAINTAINER Kevin Littlejohn <kevin@littlejohn.id.au>
RUN yum install -y openssl
RUN mkdir -p /etc/pki/CA
WORKDIR /etc/pki/CA
RUN mkdir -p certs crl newcerts private && chmod 700 private && touch index.txt && echo 1000 > serial
ADD gen_root_key.sh /usr/local/bin/gen_root_key.sh
ADD gen_root_cert.sh /usr/local/bin/gen_root_cert.sh
RUN chmod +x /usr/local/bin/gen_root_key.sh /usr/local/bin/gen_root_cert.sh
