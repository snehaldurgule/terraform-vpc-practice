resource "aws_vpc" "main" {

    #Arguments : Input Values
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    tags = var.vpc_tags
        
    
  
}

variable "vpc_tags" {
  description = "value"
  type        = map(string)
  default     = {
    Name = "Terraform VPC"
    Location = "Pune"
    Project = "Terraform"
    Environment = "production"
  }
}