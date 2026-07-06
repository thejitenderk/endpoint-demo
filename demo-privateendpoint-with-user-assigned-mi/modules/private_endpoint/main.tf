resource "azurerm_private_endpoint" "private_endpoint" {
  name                = var.pe_name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = "${var.pe_name}-psc"
    private_connection_resource_id = var.psc_resource_id
    subresource_names              = [var.psc_subresource_name]
    is_manual_connection           = false
  }

  private_dns_zone_group {
    name                 = "${var.pe_name}-pdzgroup"
    private_dns_zone_ids = [var.pdz_id]
  }
}
