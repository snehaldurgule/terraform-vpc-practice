resource "aws_instance" "app" {
    # arguments
    ami = var.ami_id
    instance_type = var.aws_instance_type
    availability_zone = var.aws_availability_zone
    
    tags = {
        name ="app_server"
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