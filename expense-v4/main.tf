module "expense" {
    for_each = var.components
    source = "./module"


ami = var.ami
env = var.env
zone_id = var.zone_id
sg_ids = var.sg_ids
instance_type = each.value["instance_type"]
name = each.value["name"]
}
