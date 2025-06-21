
resource "aws_route53_record" "expense" {
  count = length(var.instance_names)
  zone_id = var.zone_id
  name = "${var.instance_names[count.index]}.${var.domain_name}" #interpolation
    type = "A"
    ttl = 1
    records = [aws_instance.expense[count.index].private_ip]
    allow_overwrite = true

}


resource "aws_route53_record" "publicip_record" {
  zone_id = var.zone_id
  name = "${var.domain_name}" #interpolation
    type = "A"
    ttl = 1
    records = [aws_instance.expense[1].public_ip]
    allow_overwrite = true

}
