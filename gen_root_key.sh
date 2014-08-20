#!/bin/bash
# Generate the root key, used to create the root certificate for signing

[ -f /etc/pki/CA/private/ca.key.pem ] || {
  openssl genrsa -aes256 -out /etc/pki/CA/private/ca.key.pem 4096
  chmod 400 /etc/pki/CA/private/ca.key.pem
}
