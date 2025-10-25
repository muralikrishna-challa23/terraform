resource "aws_route53_record" "r53_roboshop" {
  count = 4  
  zone_id = "Z026855721W2V0QCE5DEE"
  name    = "${var.instance[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.terraform[count.index].private_ip]
  allow_overwrite = true 
}