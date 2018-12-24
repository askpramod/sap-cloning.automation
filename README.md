Background-

I chose Azure as a cloud provider over AWS as I did not had an active AWS account. Also, I take it as a challenge and learning, as in the past I have worked mostly with AWS.


Tools used - 
I used azure-cli and cloud-init as these simple yet powerful tools worked for efficient provisioning and setup.

Azure keyvault - I explored it, understand it but facing a challenge in integrating it with the app. I am using two npm modules for integration - azure-keyvault (a SDK) and ms-rest-azure (for authentication using Managed Service Identity or service to azure-service authentication).


Steps to deploy this application?

- Clone this repo
- Login to azure-cli with "az login"
- Run setup.sh with chmod +x setup.sh && bash setup.sh
- Copy the VM IP address from output of above command to browse the app.

You can ssh on the VM with azureadmin@VM-IP-Address
