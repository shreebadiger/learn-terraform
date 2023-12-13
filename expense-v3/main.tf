resource "aws_instance" "instances"{
    for_each = var.components
    ami = var.ami
    instance_type = each.value["instance_type"]
    vpc_security_group_ids=  var.sg_ids

    tags = {
        Name = "${each.value["Name"]}-${var.env}"
    }
}

resource "aws_route53_record" "frontend" {
    for_each = var.components
    zone_id = var.zone_id
    name    = "${each.value["Name"]}-${var.env}"
    type    = "A"
    ttl     = 30
    records = [aws_instance.instances[each.value["Name"]].private_ip]
}

