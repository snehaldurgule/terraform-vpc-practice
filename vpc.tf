resource "aws_vpc" "main" {

    #Arguments : Input Values
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    tags = {
        Name = "Terraform VPC"
        location = "Pune"
        project = "Terraform"
        environment = "production"
    }
  
}