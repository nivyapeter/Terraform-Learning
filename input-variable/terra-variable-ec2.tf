provider "aws" {
     profile   ="default"
     region    =var.region
}

resource "aws_instance" "example" {
     ami           ="ami-010aff33ed5991201"
     instance_type ="t2.micro"
     tags = {
         Name = "tera-variable-ec2"
}

}