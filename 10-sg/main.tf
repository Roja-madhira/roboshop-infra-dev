# module "mongodb_sg" {
#     source = "git::https://github.com/Roja-madhira/terraform-aws-sg.git?ref=main"
#     project = var.project
#     environment = var.environment
#     sg_name = var.mondodb_sg_name
#     vpc_id = var.vpc_id
# }
# module "redis_sg" {
#     source = "git::https://github.com/Roja-madhira/terraform-aws-sg.git?ref=main"
#     project = var.project
#     environment = var.environment
#     sg_name = var.redis_sg_name
#     vpc_id = var.vpc_id
# }
module "sg" {
    count = length(var.sg_names)
    source = "git::https://github.com/Roja-madhira/terraform-aws-sg.git?ref=main"
    project = var.project
    environment = var.environment
    sg_name = replace(var.sg_names[count.index], "_" ,"-")  
    vpc_id = local.vpc_id
  
}
