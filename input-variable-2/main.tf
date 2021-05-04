# Set the instance name with a variable

```
provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-010aff33ed5991201"
  instance_type = "t2.micro"

  tags = {
-  Name = "terraform-instance"
+  Name = var.instance_name
  }
}