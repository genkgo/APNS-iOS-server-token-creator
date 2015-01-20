# APNS-iOS-server-token-creator
Simple bash script that automates the steps taken to create, test and prepare the signed server certificate for the Apple Push Notification Service.

Outputs a ready to use PushCertKey pem file.
The first two steps need to be done using OSX. The script itself can be run from linux as well as long a you have the required files.

1. Create a private/public key pair (iOS Dev center and keychain Access).
2. Create a certificate signing request (CSR), signed with your private key (keychain Access).
3. Submit the CSR to Apple and download a signed certificate.
4. Move the files (.CertSigningRequest, .cer and .p12) into the same folder
5. Run the script in the folder
