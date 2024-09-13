variable "instance_name" {
    type = list
    default = [ "db", "frontend", "backend" ]
}
variable "image-id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "RHEL-9-AMI ID"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "common_tags" {
    default = {
        project = "Expense"
        Environment = "Dev"
        terraform = "true"
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
#r53 variables

variable "zone_id"{
    default = "Z020833331448RNS41GGI"
}
variable "domain-name" {
    default = "sudheerdevopsengineer.online"
}