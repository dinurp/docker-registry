KEY_NAME=my-registry

/usr/bin/openssl genrsa -out certs/${KEY_NAME}.key 1024 
/usr/bin/openssl req -x509 -nodes -days 730 -newkey rsa:4096 \
    -keyout certs/${KEY_NAME}.key \
    -out certs/${KEY_NAME}.crt \
    -config san.cnf 
/usr/bin/openssl x509 -in certs/${KEY_NAME}.crt -text -noout
