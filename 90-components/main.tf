module "component" {
    for_each = var.components
    source = "../../roboshop-component-using-terraform-"
    project = var.project
    environment = var.environment
    component = each.key
    app_version = each.value.app_version
    rule_priority = each.value.rule_priority
}