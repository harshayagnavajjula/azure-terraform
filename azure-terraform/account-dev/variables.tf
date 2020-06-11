variable "locations" {
  type = list
}

variable "common_tags" {
  type = "map"
}

variable "subnet_name" {
  description = "subnet list"
  type = "list"
}

variable "nsg_custom_rules" {}

#####

variable "vm_os_publisher" {}
variable "vm_os_offer" {}
variable  "vm_os_sku"     {}
variable "vm_immutable_os_disk" {}
variable "vm_immutable_data_disk" {}
variable "os_disk_caching" {}
variable "os_create_option" {}
variable "vm_os_disk_type" {}


## Compute VM ##
variable "compute_vm_size" {}
variable "compute_vm_admin_username" {}
