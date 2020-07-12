# Terraform_Docker_Framework
This is a framework for [Docker](https://www.docker.com/) is working in [Amazon AWS](https://aws.amazon.com/) cloud environment or [Terraform](https://www.terraform.io/). 

## Directory Descritption
### modules: This store aws components which this framwork need by terraform codes. 
### util: 
- build.sh: buiding VM's envrionment, installing docker and running container.
- Dockerfile: For customize docker image
- monitor.sh: Monitoring docker container's states and resource usage
- static_words_in_home_page.sh: A simple script which can count most frequency words in the home page.

## Step Zero: Prerequisites

- This needs a [Terraform Client](https://www.terraform.io/downloads.html). You can put it into the $PATH or use specified path directly.
- 


