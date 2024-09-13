resource "aws_instance" "expense" {
    count = length(var.instance_name)
    ami  = var.image-id
    vpc_security_group_ids = [aws_security_group.allow_sudheer.id]
    instance_type = var.instance_name [count.index] == "db" ? "t3.small" : "t3.micro"

    tags = merge (
        var.common_tags,
        {
            Name = var.instance_name [count.index]
            Module = var.instance_name [count.index] 
        }
    )
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