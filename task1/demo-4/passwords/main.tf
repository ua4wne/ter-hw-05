terraform {
  required_providers {}
  required_version = ">=1.8.4"
}



resource "random_password" "input_vms" {
  for_each=toset(local.vms)
  length = 16
}