# main.tf
```
provider "aws" {
     profile   ="default"
     region    ="ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-010aff33ed5991201"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
```
# variables.tf
```
variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "new-terraform-instance"
}
```
# Output EC2 instance configuration
```
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.example.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.example.public_ip
}
```

# Inspect output values
- terraform init
- terraform apply
- terraform output