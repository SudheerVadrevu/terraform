resource "aws_instance" "db" {
    ami  = var.image-id
    vpc_security_group_ids = [aws_security_group.allow_sudheer.id]
    instance_type = var.instance_type

    tags = var.tags
}

resource "aws_security_group" "allow_sudheer"{
    name = var.security-group-name-idhi
    description = var.security-group-description-idhi

    ingress {
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
    
    }
    
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
    }

    tags = {
        Name = "allow_sudheer"
        createdby = "vadrevusudheer"
    }
}