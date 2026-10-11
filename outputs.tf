output "core_instance_credentials_lookup_id" {
  description = "Map of id values across all core_instance_credentials_lookup, keyed the same as var.core_instance_credentials_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_instance_credentials.core_instance_credentials_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_instance_credentials_lookup_instance_id" {
  description = "Map of instance_id values across all core_instance_credentials_lookup, keyed the same as var.core_instance_credentials_lookup except keys with no instance_id are omitted"
  value       = { for k, v in data.oci_core_instance_credentials.core_instance_credentials_lookup : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "core_instance_credentials_lookup_password" {
  description = "Map of password values across all core_instance_credentials_lookup, keyed the same as var.core_instance_credentials_lookup except keys with no password are omitted"
  value       = { for k, v in data.oci_core_instance_credentials.core_instance_credentials_lookup : k => v.password if v.password != null && length(v.password) > 0 }
}
output "core_instance_credentials_lookup_username" {
  description = "Map of username values across all core_instance_credentials_lookup, keyed the same as var.core_instance_credentials_lookup except keys with no username are omitted"
  value       = { for k, v in data.oci_core_instance_credentials.core_instance_credentials_lookup : k => v.username if v.username != null && length(v.username) > 0 }
}

