variable "image-id" {
    type = string
    default = "ami-041e2ea9402c46c32"
    description = "RHEL-9-AMI ID"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "tags" {
    default = {
        project = "Expense"
        Environment = "Dev"
        Module = "DB"
        Name = "DB"
    }
}
variable "security-group-name-idhi" {
    default = "allow_sudheer"
    type = string
}
variable "security-group-description-idhi" {
    default = " I named the security group allow_sudheer"
}
variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}
variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
}