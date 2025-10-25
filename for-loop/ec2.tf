resource "aws_instance" "terraform" {
  for_each = toset(var.instances)
  ami           = var.ami_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all_tf.id]
  tags = {
      Name = "${each.value}-1"
      terraform = true
  }
}


resource "aws_security_group" "allow_all_tf" {
  name        = var.sg_name

  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocal
    cidr_blocks      = var.cidr
  }

  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.protocal
    cidr_blocks      = var.cidr
  }

  tags = {
    Name = var.sg_name
  }
}