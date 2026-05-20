// ...existing code...
locals {
  common_tags = {
    project     = var.project
    environment = var.environment
    terraform   = "true"
  }

  vpc_final_tags = merge(
    local.common_tags,
    {
      Name = "${var.project}-${var.environment}"
    },
    var.vpc_tags
  )

  igw_final_tags = merge(
    local.common_tags,
    {
       Name = "${var.project}-${var.environment}"
    },
    var.igw_tags
  )
  az_name = slice(data.aws_availability_zones.available.group_names, 0,2)
  
  
}
// ...existing code...



