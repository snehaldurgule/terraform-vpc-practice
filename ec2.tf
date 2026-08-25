resource "aws_instance" "app" {
    # arguments
    ami = "ami-01a00762f46d584a1"  #regional specific
    instance_type = "t3.micro"
    availability_zone = "ap-south-1a" #optonal
    associate_public_ip_address = false
    #key pair ,vpc ,firewall and storage ---optional
    tags = {
        name ="app_server"
        Env = "production" 
    }
  
}

resource "aws_instance" "web" {
    # arguments
    ami = "ami-0ac7b260cf76d8865"  #regional specific
    instance_type = "t3.micro"
    associate_public_ip_address = false

    tags = {
        name ="web_server"
        Env = "production" 
    }
  
}

