variable "private_link_attachment_connections" {
  description = <<EOT
Map of private_link_attachment_connections, attributes below
Required:
    - display_name
    - environment (block):
        - id (required)
    - private_link_attachment (block):
        - id (required)
Optional:
    - aws (block):
        - vpc_endpoint_id (required)
    - azure (block):
        - private_endpoint_resource_id (required)
    - gcp (block):
        - private_service_connect_connection_id (required)
EOT

  type = map(object({
    display_name = string
    environment = object({
      id = string
    })
    private_link_attachment = object({
      id = string
    })
    aws = optional(object({
      vpc_endpoint_id = string
    }))
    azure = optional(object({
      private_endpoint_resource_id = string
    }))
    gcp = optional(object({
      private_service_connect_connection_id = string
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

