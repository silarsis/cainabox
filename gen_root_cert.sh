#!/bin/bash
# Generate the root certificate, ready to sign certs

[ -f /etc/pki/CA/certs/ca.key.pem ] || {
  openssl req -new -x509 -days 365 -key /etc/pki/CA/private/ca.key.pem -extensions vs_ca -out /etc/pki/CA/certs/ca.cert.pem
  chmod 444 /etc/pki/CA/certs/ca.cert.pem
}
