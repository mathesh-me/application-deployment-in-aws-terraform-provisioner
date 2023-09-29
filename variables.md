### Step 4 : Providing values to resources
1. In [Step 3](https://github.com/mathesh-me/application-deployment-in-aws-terraform/blob/main/resources.md), we created files for resources but did not assign any values to those resources.
2. Values are necessary for resource creation. In this step, I am going to provide values for the resources.
3. Create a new file named 'variables.tf' and copy *[variables.tf](https://github.com/mathesh-me/application-deployment-in-aws-terraform/blob/main/Application%20Deployment/variables.tf)* from my repository. Paste it into the newly created file.
4. In the 'variables.tf' file, I have only defined variable names without hardcoding the values.
5. I will be assigning the values in the ***terraform.tfvars*** file to adhere to best security practices. You can refer to my [terraform.tfvars](https://github.com/mathesh-me/application-deployment-in-aws-terraform/blob/main/Application%20Deployment/terraform.tfvars) for reference.
