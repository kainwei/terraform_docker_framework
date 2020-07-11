# local variable
variable "public_key_path" {
  default = "C:\\terraform_docker_framework.pub"
}

variable "private_key_path" {
  default = "C:\\terraform_docker_framework.pem"
}

variable "key_name" {
  description = "Desired name of AWS key pair"
  default = "terraform_docker_framework.pem"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "ap-southeast-2"
}

# Ubuntu Precise 18.04 LTS (x64)
variable "aws_amis" {
  default = {
    ap-southeast-2 = "ami-0bc49f9283d686bab"
  }
}

# variable from other modules
variable "vpc_output_id" {
}

variable "subnet_output_id" {
}

