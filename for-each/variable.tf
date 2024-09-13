variable "instance_name" {
    type = map
    default = {
        db = "t3.micro"
        backend = "t2.small"
        frontend = "t3.medium"
    }
}

variable "common_tags" {
    type = map
    default = {
        project = "Not-an-expense"
        terraform = "True"

    }
}

variable "zone_id"{
    default = "Z020833331448RNS41GGI"
}
variable "domain-name" {
    default = "sudheerdevopsengineer.online"
}