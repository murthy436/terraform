#EC2 instance variables

variable "instance_names" {
  type = list
  default = ["db","backend","frontend"]
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "image_id" {
  type = string
  default = "ami-090252cbe067a9e58"
  description = "RHEL-9 AMI ID"
}

variable "common_tags" {
  default = {
    Project = "Expense"
    Environment = "Dev"
    Terraform = "true"
  }
}

#Security Group variables

variable "sg_name" {
  default = "allow_ssh"
}

variable "sg_description" {
  default = "allowing port no 22"
}

variable "ssh_port" {
  default = 22
}

variable "protocol" {
  default = "tcp"
}

variable "allowed_cidr" {
  type = list(string)
  default = ["0.0.0.0/0"]
}

#r53 variables

variable "zone_id" {
  default = "Z05120732CIBCPPBB3YVD"
}

variable "domain_name" {
  default = "aws78s.online"
}