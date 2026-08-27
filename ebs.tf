#resource "aws_ebs_volume" "gp3" {
    #availability_zone = "ap-south-1a"
    #size              = 8
    #type              = "gp3"
    #encrypted         = true
    #iops              = 3000
    #tags = {
        #Name = "gp3_volume"
    #}
  
#}

resource "aws_ebs_volume" "gp3" {
    availability_zone = "ap-south-1b"
    size              = 40
    type              = "gp3"
    encrypted         = var.ebs_encrypted
    tags = {
        Name = "gp3_volume"
    }
  
}

