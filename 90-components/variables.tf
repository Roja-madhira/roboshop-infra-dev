variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "zone_id" {
    default = "Z02795771TLDB7CKVSHO4"
}

variable "domain_name" {
    default = "daws92s.shop"
}

variable "app_version" {
    default = "v4"
}
variable "components" {
    default = {
        frontend = {
            rule_priority = 10
            app_version = "v4"
        }
        user = {
            rule_priority = 20
            app_version = "v4"
        }
        cart = {
            rule_priority = 30
            app_version = "v4"
        }
    }
  
}
