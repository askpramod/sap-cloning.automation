BS

I chose Azure as a cloud provider over AWS as I did not had an active AWS account. Also, I take it as a challenge and learning, as in the past I have worked mostly with AWS.


Tools used - 
I used azure-cli and cloud-init as these simple yet powerful tools worked for efficient provisioning and setup.

Azure keyvault - I explored it, understand it but I faced issue while creating a secret from azure-cli. It thrown an error - "Operation returned an invalid status code 'Unauthorized'" which I guess has  to do with vault permissions. I couldn't dig deeper due to time constraint.

Scaling -
We can use both ARM and Terraform to deploy infrastructure. I personally go with Terraform however, it also depends on other factors ie: resources you are deploying, if you are using any CM tool for handling configurations etc.

For Static website we can use S3 with Cloudfrond. I would strongly suggest these two services for mentioned reasons-

- serverless
- autoscale
- fast (cdn)
- cost efficient