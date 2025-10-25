locals {
    ami_id = data.aws_ami.ami_query.id
    instance_type = "t3.micro"
    common_name = "${var.project}-${var.environment}"
}
