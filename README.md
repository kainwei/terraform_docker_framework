# Terraform_Docker_Framework
This is a framework for [Docker](https://www.docker.com/) is working in [Amazon AWS](https://aws.amazon.com/) cloud environment or [Terraform](https://www.terraform.io/). 

## Directory Descritption
### modules: This store aws components which this framwork need by terraform codes. 
### util: Dockerfile and all script in this project, below is the detail.
- build.sh: buiding VM's envrionment, installing docker and running container.
- Dockerfile: For customize docker image
- monitor.sh: Monitoring docker container's states and resource usage
- static_words_in_home_page.sh: A simple script which can count most frequency words in the home page.

## Step Zero: Prerequisites

- This needs a [Terraform Client](https://www.terraform.io/downloads.html). You can put it into the $PATH or use specified path directly.
- This needs you to prepare a Key pair for VM's login automatically. You can put the key pair in your local host. The variables location are in modules/ec2/variables.tf. They are variable "public_key_path" and variable "private_key_path" 
- This needs you to put an aws credential to main.tf in root directory. The variable name is "shared_credentials_file=", file content format is :
```
[default]
aws_access_key_id = A1B2C3D4F5G6H7I8J9K0
aws_secret_access_key = A1B2C3D4F5G6H7I8J9K0A1B2C3D4F5G6H7I8J9K0
```

## Step One: Run Terraform
Run command under root directory:
```
terraform init
terraform apply
```
If you are using terrform running in windows, run:
```
terraform.exe init
terraform.exe apply
```

