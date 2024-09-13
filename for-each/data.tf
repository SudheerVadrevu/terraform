data "aws_ami" "ami_imp" {

    most_recent = true
    owners = ["973714476881"]

    filter {
        name    = "virtualization-type"
        values   = ["hvm"]
    }

    filter {
        name   = "boot-mode"
        values   = ["uefi-preferred"]
    }
}