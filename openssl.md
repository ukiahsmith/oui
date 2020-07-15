# OpenSSL

## Run a local TLS server

Run a server using a CA key, a Key and a cert. Requires clients to send a sert with http request

```
openssl s_server -cert mtls-ca-cert.pem -key mtls-ca-key.pem -WWW -port 12345 -CAfile mtls-ca-cert.pem -verify_return_error -Verify 1
```


Client command to connect to the server.

```
curl -v https://localhost:12345/pwd.txt -k --cert mtls-bob-crt.pem --key mtls-bob-key.pem
```
