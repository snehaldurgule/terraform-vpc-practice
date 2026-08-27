resource "aws_instance" "app" {
    # arguments
    ami = "ami-01a00762f46d584a1"  #regional specific
    instance_type = var.instance_type 
    availability_zone = "ap-south-1a" #optonal
    count = var.instance_count #it will start from 0 to 4
    #key pair ,vpc ,firewall and storage ---optional
    tags = {
        Name ="app_server"
        Env = "production" 
    }
  
}

#resource "aws_instance" "web" {
    # arguments
    #ami = "ami-0ac7b260cf76d8865"  #regional specific
    #instance_type = "t3.micro"
    
    #tags = {
   #     Name ="web_server"
  #      Env = "production" 
 #   }
  
#}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
}


