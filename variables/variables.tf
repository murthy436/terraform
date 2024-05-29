variable "image_id" {
  type= string
  description = "RHEL-9 AMI ID"
  default = "ami-090252cbe067a9e58"
}

variable "instance_type" {
  type= string
  default = "t3.micro"
}

variable "tags" {
  default = {
    Project= "Expense"
    Enviroment= "Dev"
    Module= "DB"
    Name= "DB"
  }
}

variable "sg_name" {
  default = "allow_ssh"
}

variable "sg_description" {
  default = "allwoing port no 22"
}

variable "ssh_port" {
  default = 22
}

variable "protocol" {
  default = "tcp"
}

variable "allowed_cidr" {
  type= list(string)
  default = [ "0.0.0.0/0" ]

}