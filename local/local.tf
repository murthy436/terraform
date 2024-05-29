locals {
  ami = "ami-090252cbe067a9e58"
  sg_id = "sg-0e1e755d66a9572f7"
  instance_type = var.instance_name == "db" ? "t2.micro" : "t3.micro"
  tags = {
    Name = "locals"
  }
}