#!/bin/bash
echo
echo "Please make sure you have a certificate (.cer) and signing key (.p12) in the folder where you run this script "
echo
echo "Enter name of app: "
read input_variable
echo "You have entered: $input_variable"
read -p "Is this correct y/n? " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

if [ ! -f /*.cer ]; then
    echo "Error. Certificate file not found!"
    exit 0
fi

if [ ! -f /*.p12 ]; then
    echo "Error. Private signing key not found!"
    exit 0
fi

openssl x509 -in *.cer -inform der -out PushCert.pem
openssl pkcs12 -nocerts -out PushKey.pem -in *.p12
read -p "Press [Enter] key to start sandbox test..."
openssl s_client -connect gateway.sandbox.push.apple.com:2195 -cert PushCert.pem -key PushKey.pem
read -p "Correct handshake y/n? " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo "Please re-create certificate and signing key and try again!"
fi
cat PushCert.pem PushKey.pem > "ios-server-PushCert-$input_variable.pem"
rm PushKey.pem
rm PushCert.pem