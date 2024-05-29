variable "instance_names" {
  type = map
  default = {
    db = "t3.micro"
    backend= "t3.small"
    frontend= "t3.small"
  }
}

variable "common_tags" {
    type = map
    default = {
        Project = "Expense"
        Terraform = "true"
    }
}

variable "domain_name" {
    default = "aws78s.online"
}

variable "zone_id" {
    default = "Z05120732CIBCPPBB3YVD"
}