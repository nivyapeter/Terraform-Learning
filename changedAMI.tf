# Replacing the current AMI ID with a new one
- Here, Terraform will destroy the old instance and create a new one
```
provider "aws" {
     profile   ="default"
     region    ="ap-south-1"
}

resource "aws_instance" "example" {
    - ami           = "ami-0b84c6433cdbe5c3e"
    + ami           = "ami-0c1a7f89451184c8b"
    instance_type =  "t2.micro"
     tags = {
         Name = "terra-changed-insta"
     }
}

```
- terraform init
- terraform apply
- terraform destroy
   
