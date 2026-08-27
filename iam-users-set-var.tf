resource "aws_iam_group" "group" {
    name = each.value 
    for_each = toset(var.iam_groups)
}

variable "iam_groups" {
  description = "value"
  type = set(string)
  default = ["db_group", "dev_group", "qa_group"]
}