resource "azurerm_resource_group" "resource_group" {
  count = length(var.locations)

  name     = "${var.resource_group_name}-${element(var.locations, count.index)}"
  location = element(var.locations, count.index)

  tags = var.common_tags
}
