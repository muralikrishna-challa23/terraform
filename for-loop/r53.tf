resource "aws_route53_record" "roboshop_r53" {
    for_each = aws_instance.terraform
    zone_id = "Z026855721W2V0QCE5DEE"
    name    = "${each.key}.${var.domain_name}"
    type    = "A"
    ttl     = 1
    records = [each.value.private_ip]
    allow_overwrite = true 
}