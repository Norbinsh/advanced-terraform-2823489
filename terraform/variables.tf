# //////////////////////////////
# VARIABLES
# //////////////////////////////
variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "region" {}

variable "instance_type" {}

variable "instance_tags" {
  type = map(string)
}

variable "instance_count" {
  type = number
}

# //////////////////////////////
# OUTPUT
# //////////////////////////////
output "instance-ip" {
  value = module.ec2_cluster.public_ip
}
