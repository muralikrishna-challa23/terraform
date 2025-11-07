resource "aws_instance" "terraform" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all_tf.id]

  tags = {
    Name = "terraform"
    terraform = "true"
  }

  provisioner "local-exec" {
    command = "echo ${self.private_ip} > inventory "
    on_failure = continue
  }

  provisioner "local-exec" {
    command = "echo It destroyed "
    when = destroy
  }

  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }

provisioner "remote-exec" {
    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
provisioner "remote-exec" {
    inline = [
      "sudo systemctl stop nginx"
    ]
    when = destroy
  }  
}


resource "aws_security_group" "allow_all_tf" {
  name        = "allow_all_tf"

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_all_tf"
  }
}