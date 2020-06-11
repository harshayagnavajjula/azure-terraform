locations = ["east us", "west us"]

subnet_name                       = ["subnet1"]
subnet_count                      = "1"

nsg_custom_rules = [
    {
      name                   = "ssh"
      priority               = "200"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "tcp"
      destination_port_range = "22"
      source_address_prefix  = "VirtualNetwork"
      description            = "ssh-for-vm-management"
    }
  ]
#-----------------------------------------------------------------------------
# Virtual Machines
#-----------------------------------------------------------------------------
vm_os_disk_type                   = "Premium_LRS"
vm_immutable_os_disk              = "true"
vm_immutable_data_disk            = "true"
vm_os_publisher                    = "RedHat"
vm_os_offer                        = "RHEL"
vm_os_sku                          = "7-RAW"
os_disk_caching                   = "ReadWrite"
os_create_option                  = "FromImage"

## Compute VM ##
compute_vm_size                   = "Standard_E8s_v3"
