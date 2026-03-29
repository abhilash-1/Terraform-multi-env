resource "aws_route53_record" "roboshop_r53" {
  for_each = local.Private_IP
  zone_id = local.zone_id
  name    = "${each.key}_${var.environment}"
  type    = "A"
  ttl     = 1
  records = [each.value]
}