resource "confluent_private_link_attachment_connection" "private_link_attachment_connections" {
  for_each = var.private_link_attachment_connections

  display_name = each.value.display_name

  environment {
    id = each.value.environment.id
  }

  private_link_attachment {
    id = each.value.private_link_attachment.id
  }

  dynamic "aws" {
    for_each = each.value.aws != null ? [each.value.aws] : []
    content {
      vpc_endpoint_id = aws.value.vpc_endpoint_id
    }
  }

  dynamic "azure" {
    for_each = each.value.azure != null ? [each.value.azure] : []
    content {
      private_endpoint_resource_id = azure.value.private_endpoint_resource_id
    }
  }

  dynamic "gcp" {
    for_each = each.value.gcp != null ? [each.value.gcp] : []
    content {
      private_service_connect_connection_id = gcp.value.private_service_connect_connection_id
    }
  }
}

