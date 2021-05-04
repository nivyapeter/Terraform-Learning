# Creation of EC2 instance
- mkdir Terraform-learning
- cd Terraform-learning
- sudo vi ec2.tf

```

provider "aws" {
     profile   ="default"
     region    ="ap-south-1"
}

resource "aws_instance" "example" {
     ami           ="ami-0b84c6433cdbe5c3e"
     instance_type ="t2.micro"
     tags = {
         Name = "tera-ec2"
}


}

```
- terraform init
- terraform apply
- terraform destroy (to delete)