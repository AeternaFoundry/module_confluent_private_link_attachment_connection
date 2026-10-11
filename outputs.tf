output "private_link_attachment_connections_id" {
  description = "Map of id values across all private_link_attachment_connections, keyed the same as var.private_link_attachment_connections except keys with no id are omitted"
  value       = { for k, v in confluent_private_link_attachment_connection.private_link_attachment_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "private_link_attachment_connections_aws" {
  description = "Map of aws values across all private_link_attachment_connections, keyed the same as var.private_link_attachment_connections except keys with no aws are omitted"
  value       = { for k, v in confluent_private_link_attachment_connection.private_link_attachment_connections : k => one(v.aws) if v.aws != null && length(v.aws) > 0 }
}
output "private_link_attachment_connections_azure" {
  description = "Map of azure values across all private_link_attachment_connections, keyed the same as var.private_link_attachment_connections except keys with no azure are omitted"
  value       = { for k, v in confluent_private_link_attachment_connection.private_link_attachment_connections : k => one(v.azure) if v.azure != null && length(v.azure) > 0 }
}
output "private_link_attachment_connections_display_name" {
  description = "Map of display_name values across all private_link_attachment_connections, keyed the same as var.private_link_attachment_connections except keys with no display_name are omitted"
  value       = { for k, v in confluent_private_link_attachment_connection.private_link_attachment_connections : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "private_link_attachment_connections_environment" {
  description = "Map of environment values across all private_link_attachment_connections, keyed the same as var.private_link_attachment_connections except keys with no environment are omitted"
  value       = { for k, v in confluent_private_link_attachment_connection.private_link_attachment_connections : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "private_link_attachment_connections_gcp" {
  description = "Map of gcp values across all private_link_attachment_connections, keyed the same as var.private_link_attachment_connections except keys with no gcp are omitted"
  value       = { for k, v in confluent_private_link_attachment_connection.private_link_attachment_connections : k => one(v.gcp) if v.gcp != null && length(v.gcp) > 0 }
}
output "private_link_attachment_connections_private_link_attachment" {
  description = "Map of private_link_attachment values across all private_link_attachment_connections, keyed the same as var.private_link_attachment_connections except keys with no private_link_attachment are omitted"
  value       = { for k, v in confluent_private_link_attachment_connection.private_link_attachment_connections : k => one(v.private_link_attachment) if v.private_link_attachment != null && length(v.private_link_attachment) > 0 }
}
output "private_link_attachment_connections_resource_name" {
  description = "Map of resource_name values across all private_link_attachment_connections, keyed the same as var.private_link_attachment_connections except keys with no resource_name are omitted"
  value       = { for k, v in confluent_private_link_attachment_connection.private_link_attachment_connections : k => v.resource_name if v.resource_name != null && length(v.resource_name) > 0 }
}

