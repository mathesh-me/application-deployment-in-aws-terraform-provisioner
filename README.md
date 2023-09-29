# Automatic application deployment in AWS using Terraform
## Project Description:
In this project, I leveraged the power of **Terraform Provisioners** and **AWS** to create an automated and consistent deployment pipeline for applications on Amazon EC2 instances.This project is an automation solution designed to simplify the deployment of applications on AWS EC2 instances. In this project, I am going to deploy a simple flask application.

## Key Features:

### Infrastructure as Code (IaC): 
Embrace the IaC philosophy by defining my AWS infrastructure in code. Terraform scripts provide a clear and version-controlled representation of my environment.

### Efficient EC2 Instance Provisioning: 
Used Terraform to provision EC2 instances with predefined configurations, enabling quick and reliable resource provisioning.

### Application Deployment Automation: 
Used Terraform provisioners to automate the deployment of my applications, handling tasks such as package installation, configuration, and service startup.

### Flexibility and Scalability: 
Because of Terraform , I can Scale my resources up or down effortlessly with Terraform's scalability features.

### Security by Design: 
Implemented AWS security best practices, including IAM role assignments and security group configurations, to maintain a secure deployment environment.

### Comprehensive Documentation: 
This project includes detailed documentation and a README that guides users through setting up and customizing the Terraform code for their specific applications.

## Prerequistes:
1.Basic knowledge of AWS services and concepts.
2.Familiarity with Terraform and infrastructure as code principles.
3.An AWS account with appropriate permissions.
4.An IDE of your Choice , I would suggest VS Code Editor .

## Steps:
| Step No | Document Link |
| ------ | ------ |
| 1 | [Setting Up the Environment][Step-1] |
| 2 | [Installing the neccessary plugins][Step-2] |
| 3 | [Creating resource configuration files][Step-3] |
| 4 | [Providing values to resources][Step-4] |
| 5 | [Flask Application][Step-5] |
| 6 | [Getting a Link as Output][Step-6] |
| 7 | [Deploying the Application][Step-7] |

   [Step-1]: <./setup.md>
   [Step-2]: <./providers.md>   
   [Step-3]: <./resources.md>
   [Step-4]: <./variables.md>
   [Step-5]: <./flask-app.md>   
   [Step-6]: <./outputs.md>
   [Step-7]: <./deployment.md>
