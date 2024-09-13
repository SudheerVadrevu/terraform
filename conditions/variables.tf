variable "image-id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "RHEL-9-AMI ID"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "instance_name" {
    default = "backend"
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