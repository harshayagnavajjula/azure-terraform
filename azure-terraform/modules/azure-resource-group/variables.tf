variable "resource_group_name" {}
variable "locations" {
  type        = list
  default     = []
}
variable "common_tags" {
  type = "map"
}
