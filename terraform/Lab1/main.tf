provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "terrform-ec2" {
    ami           = "ami-0c7f981fd31e5c7ae"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.existing_sg.id]
}

data "aws_security_group" "existing_sg" {
      id = "sg-0564146373b75e1cc" # Replace with your security group ID
      # Alternatively, use filters to find it:
      # name = "my-existing-security-group"
      # tags = {
      #   Environment = "production"
      # }
}