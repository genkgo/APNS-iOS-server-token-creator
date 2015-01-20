# APNS-iOS-server-token-creator
Simple bash script that automates the steps taken to create, test and prepare the signed server certificate for the Apple Push Notification Service.

Outputs a ready to use PushCertKey pem file for in your production environemnt.
The creation of the requires files need to be done using OSX. The script itself can be run from linux.

### Prerequisites

1. Create iOS App (iOS Dev Center)
2. Create a private/public key pair (iOS Dev Center and keychain Access).
3. Create a certificate signing request (CSR), signed with your private key (keychain Access).
4. Submit the CSR to Apple and download a signed certificate.
5. Move the files (.CertSigningRequest, .cer and .p12) into the same folder

**Run the script in the folder where you saved the required files**

### Further reading

Documentation by Apple [Registering, Scheduling, and Handling User Notifications](https://developer.apple.com/library/mac/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/Chapters/ProvisioningDevelopment.html#//apple_ref/doc/uid/TP40008194-CH104-SW1)  
[Great illustrated tutorial by Alo Hafizji on APNS and the signing procedure](http://www.raywenderlich.com/32960/apple-push-notification-services-in-ios-6-tutorial-part-1)  