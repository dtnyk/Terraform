terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>4.16"
    }
  }
  required_version = ">= 1.2.0"
}
#Cloud Provider and region
provider "aws" {
    #region = "us-east-1" 
    region = "${var.aws-region}"
}

#IAM User creation
resource "aws_iam_user" "demousers" {
    count = "${length(var.username)}"
    name = "${element(var.username,count.index)}"
  
}

#output
/*output "user_arn" {
    value = aws_iam_user.demousers.*.arn
  
}*/

#EC2 Insance creation
/*resource "aws_instance" "test_srvr1" {
    ami = "ami-0583d8c7a9c35822c"
    instance_type = "t2.micro"

    tags = {
      Name = "DTTeraformSrvr"
    }
}  */  