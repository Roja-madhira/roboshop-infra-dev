module "vpc" {
  #source = "../roja-terraform-aws-vpc"
  source      = "git::https://github.com/Roja-madhira/roja-terraform-aws-vpc.git?ref=main"
  project     = var.project
  environment = var.environment
  # is_peering_required = true

}