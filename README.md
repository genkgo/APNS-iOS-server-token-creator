# APNS-iOS-server-token-creator
Simple bash script that automates the steps taken to create, test and prepare the signed server certificate for the Apple Push Notification Service.

Outputs a ready to use PushCertKey pem filel.
The creation of the requires files need to be done using OSX. The script itself can be run from linux.

### Prerequisites

1. Create iOS App (iOS Dev Center)
2. Create a private/public key pair (iOS Dev Center and keychain Access).
3. Create a certificate signing request (CSR), signed with your private key (keychain Access).
4. Submit the CSR to Apple and download a signed certificate.
5. Move the files (.CertSigningRequest, .cer and .p12) into the same folder

**Run the script in the folder where you saved the required files**