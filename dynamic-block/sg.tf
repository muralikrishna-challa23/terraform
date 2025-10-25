
resource "aws_security_group" "allow_all_tf" {
  name        = "allow_all_tf"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  dynamic "ingress" {
    for_each = toset(var.ingress_ports)
    content{
            from_port        = ingress.value
            to_port          = ingress.value
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
    }

  }

  tags = {
    Name = "allow_all_tf"
  }
}