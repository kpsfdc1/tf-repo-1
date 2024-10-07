provider "aws" {
	region = "us-east-1"
}

terraform {
	backend "s3" {
		bucket = "tf-state-buk-cis"
		region = "us-east-1"
		key = "terraform.tfstate"
	}
}

resource "aws_instance" "tf_inst" {
	ami = "ami-0a0e5d9c7acc336f1"
	instance_type = "t2.micro"
	tags = {
		Name = "user_update"
	}
}
