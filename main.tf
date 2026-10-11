data "oci_core_instance_credentials" "core_instance_credentials_lookup" {
  for_each = var.core_instance_credentials_lookup

  instance_id = each.value.instance_id
}

