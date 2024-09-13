resource "aws_instance" "db" {
    ami  = local.ami-id
    vpc_security_group_ids = [local.sgi-id]
    instance_type = var.instance_name == "db"? "t3.micro" : "t3.small"
    tags  = local.tags
}
