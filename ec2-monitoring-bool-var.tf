resource "aws_instance" "web" {
    # arguments
    ami = var.ami_id
    instance_type = var.aws_instance_type
    availability_zone = var.aws_availability_zone
    
    tags = {
        Name ="boolean_server"
        Env = "production"
        Monitoring = var.ec2_monitoring
    }
}

variable  "ec2_monitoring" {
    type        = bool
    default     = true
}

