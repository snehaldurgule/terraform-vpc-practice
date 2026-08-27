resource "aws_instance" "my_instance" {
    # arguments
    ami = var.ami_id
    instance_type = var.aws_instance_type
    availability_zone = var.aws_availability_zone
    
    tags = {
        Name ="web_server"
        Env = "production" 
    }
}

variable "ami_id" {
    type = string
    default = "ami-0ac7b260cf76d8865" 
}

variable "aws_instance_type" {
    type = string
    default = "t3.micro"  
}

variable "aws_availability_zone" {
    type = string
    default = "ap-south-1b" 
}

variable "instance_count" {
    description = "5 Number of instances to create"
    type = number
    default = 5
}

variable "ebs_encrypted" {
    
    type        = bool
    default     = true
}