resource "azurerm_resource_group" "joint" {
    for_each = var.joint_rg
    name = each.value.name
    location = each.value.location
}