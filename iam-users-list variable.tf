resource "aws_iam_user" "name" {
    name = var.iam_users[count.index] #specifying the  IAM user from the list of by indexing
    count = length(var.iam_users) #counting the number of IAM users to create
  
}

variable "iam_users" {
  description = "List of IAM users to create"
  type = list(string)
  default = ["sp", "sd", "yl"]
}