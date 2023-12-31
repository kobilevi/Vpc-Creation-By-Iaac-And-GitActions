
![Diagram](https://github.com/kobilevi/Vpc-Creation-By-Iaac-And-GitActions/assets/40486401/e08a062d-e14a-475d-8ecf-b0e3456af7bc)
# Vpc-Creation-By-Iaac-And-GitHub Actions
This project leverages Terraform to automate the deployment of a Virtual Private Cloud (VPC) Using GitHub Actions CI/CD.

* The VPC is configured with a CIDR block of 10.0.0.0/16, providing a scalable and isolated network environment. Within this VPC, two subnets are created: 10.0.1.0/24 and 10.0.2.0/24, offering segmented IP spaces for different components or services.
The code will create two EC2 instances are connected to an Application Load Balancer, facilitating load distribution and high availability. The ALB listens on port 80 for incoming traffic.

* for the Ec2 instances will be linkage a Security Group(SG) that allows Ports 80 and 22
  
**Key Features:**

**Infrastructure as Code (IaC)**: The VPC deployment and EC2 instance provisioning are defined and managed as code using Terraform, offering a version-controlled and repeatable infrastructure setup.
**GitActions CI/CD Pipeline**: A GitHub Actions workflow automates Continuous Integration (CI) and Continuous Deployment (CD), ensuring efficient testing, validation, and deployment processes.

**Prerequisites:**
Before you begin, ensure you have the following prerequisites:

* Terraform Installed: Make sure you have Terraform installed on your local machine. You can download it from Terraform's official website.

* AWS Credentials: Configure your AWS credentials with the necessary permissions for VPC, EC2, and ALB management. You can set these credentials using the AWS CLI or environment variables.
* Aws Cli : AWS Command Line Interface (AWS CLI) is a set of tools for interacting with Amazon Web Services (AWS) from the command line. It allows you to manage various AWS services and resources directly from your terminal

* Git: Ensure that Git is installed on your machine for cloning and managing the project repository.

**Getting Started:**
1.After creating Aws Account, create a user that have a permmsion to deploy terraform code, you can use this guide:
https://www.youtube.com/watch?v=4u2HQCSuQpo 

2.locate the terminal where whant to deply the environment
creating a new branch using commant :
git checkout -b feature

3.Clone the repository to your local environment:
git clone https://github.com/kobilevi/Vpc-Creation-By-Iaac-And-GitActions.git

4.Configure Aws Cli Secret and Access Key :
aws configure
paste the access key id and secret key that downloading form aws account 

set up  Defualt region :
in this demo i choose : us-east-1

5.Set up authentication Access Key and Secret Key in your github repo (The key id and secert key from aws account):
https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions

name the key id as :
AWS_ACCESS_KEY
name the secret access key as :
AWS_SECRET_ACCESS_KEY



6.Customize the Terraform variables to meet your specific requirements, including instance types, CIDRs and ALB settings-**Optional**.

7.Commit and push changes to trigger the GitActions CI/CD pipeline.
**To Delete all environment use this comment in your local machine :
terraform destroy --auto-approve
![VPC](https://github.com/kobilevi/Vpc-Creation-By-Iaac-And-GitActions/assets/40486401/b7fd7849-2fa0-4569-88cf-53efe2a1b1cd)

