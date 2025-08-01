provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0c7f981fd31e5c7ae"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
}