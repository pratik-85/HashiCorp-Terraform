# Basic Syntax of Terraform
provider "aws" {
    region = "ap-southeast-1"
}

resource "aws_instance" "example" {
    ami = var.ami_id
    instance_type = var.instance_type
}

variable "ami_id" {
    description = "This is ami id"
    default = "ami-0160e8d70ebc43ee1"
}

variable "instance_type"{
    default = "t2.xlarge"
    description = "This is an instance type"
}

output "ami_id" {
    value = aws_instance.example.ami
}

output "instance_type" {
  value = aws_instance.example.instance_type
}
