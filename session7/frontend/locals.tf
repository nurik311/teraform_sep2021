## Local is used for something thats repeated over and over again


# 1. Company has a naming standart and tagging standart

# -Naming standart 

# 1. what Cloud Provider? = aws
# 2. What is the environment? = non-prod, prod
# 3. What is particular ? = dev, qa, stage
# 4. What is the project ? = matrix
# 5. what is the region? = us-east-1,

# Standart = aws-nonprod-dev-us-east-1-matrix-${resource}

#   - Tagging standart

#    1. environment
#    2. project
#    3. team 
#    4. owner
#    5. managed by = Terraform

locals {
  name = "aws-${var.stage}-${var.env}-${var.region}-${var.project}-rtype"
  common_tags = {
    env        = var.env
    project    = var.project
    team       = "DevOps"
    Owner      = "Nurik"
    Managed_By = "Terraform"
    Department = "OPS"
  }
}

env        = var.env
project    = var.project
team       = "DevOps"
Owner      = "Nurik"
Managed_By = "Terraform"
Department = "OPS"