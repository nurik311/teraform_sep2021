locals {
  project  = "web"
  app_port = 80
  domain   = "${local.project}.${var.base_domain}"
  tags = {
    Project   = title(local.project) #web, #web
    Team      = "DevOps"
    Env       = title(var.env)
    Owner     = "nurik"
    ManagedBy = "Tertaform"
  }

  region_to_tag_region = {
    us-east-1 = "use1"
    us-east-2 = "use2"
    us-west-1 = "usw1"
    us-west-2 = "usw2"
  }

  tag_region = lookup(local.region_to_tag_region, var.region, "undefined")

  name = "rtype-${var.env}-${local.project}-rtype"

}
