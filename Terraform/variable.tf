variable "instance_type" {
  description = "Ec2 Instance Type"
  type        = map(string)
  default = {
    dev  = "t2.nano"
    test = "t2.micro"
    prod = "t2.small"
  }
}

variable "region" {
  description = "Change the Region"
  type        = map(string)
  default = {
    dev  = "us-east-1"
    test = "us-west-1"
    prod = "ap-south-1"
  }
}