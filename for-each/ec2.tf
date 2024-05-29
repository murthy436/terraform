resource "aws_instance" "expense" {
  for_each = var.instance_names
  ami = data.aws_ami.ami_info.id
  vpc_security_group_ids = ["sg-0e1e755d66a9572f7"]
  instance_type = each.value
  tags = merge(
    var.common_tags,
    {
        Name = each.key
        Module = each.key
    }
  )
}