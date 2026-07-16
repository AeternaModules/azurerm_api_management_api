output "api_management_apis_id" {
  description = "Map of id values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_apis_api_management_name" {
  description = "Map of api_management_name values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.api_management_name if v.api_management_name != null && length(v.api_management_name) > 0 }
}
output "api_management_apis_api_type" {
  description = "Map of api_type values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.api_type if v.api_type != null && length(v.api_type) > 0 }
}
output "api_management_apis_contact" {
  description = "Map of contact values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.contact if v.contact != null && length(v.contact) > 0 }
}
output "api_management_apis_description" {
  description = "Map of description values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.description if v.description != null && length(v.description) > 0 }
}
output "api_management_apis_display_name" {
  description = "Map of display_name values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "api_management_apis_import" {
  description = "Map of import values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.import if v.import != null && length(v.import) > 0 }
}
output "api_management_apis_is_current" {
  description = "Map of is_current values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.is_current if v.is_current != null }
}
output "api_management_apis_is_online" {
  description = "Map of is_online values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.is_online if v.is_online != null }
}
output "api_management_apis_license" {
  description = "Map of license values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.license if v.license != null && length(v.license) > 0 }
}
output "api_management_apis_name" {
  description = "Map of name values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.name if v.name != null && length(v.name) > 0 }
}
output "api_management_apis_oauth2_authorization" {
  description = "Map of oauth2_authorization values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.oauth2_authorization if v.oauth2_authorization != null && length(v.oauth2_authorization) > 0 }
}
output "api_management_apis_openid_authentication" {
  description = "Map of openid_authentication values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.openid_authentication if v.openid_authentication != null && length(v.openid_authentication) > 0 }
}
output "api_management_apis_path" {
  description = "Map of path values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.path if v.path != null && length(v.path) > 0 }
}
output "api_management_apis_protocols" {
  description = "Map of protocols values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.protocols if v.protocols != null && length(v.protocols) > 0 }
}
output "api_management_apis_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "api_management_apis_revision" {
  description = "Map of revision values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.revision if v.revision != null && length(v.revision) > 0 }
}
output "api_management_apis_revision_description" {
  description = "Map of revision_description values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.revision_description if v.revision_description != null && length(v.revision_description) > 0 }
}
output "api_management_apis_service_url" {
  description = "Map of service_url values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.service_url if v.service_url != null && length(v.service_url) > 0 }
}
output "api_management_apis_source_api_id" {
  description = "Map of source_api_id values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.source_api_id if v.source_api_id != null && length(v.source_api_id) > 0 }
}
output "api_management_apis_subscription_key_parameter_names" {
  description = "Map of subscription_key_parameter_names values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.subscription_key_parameter_names if v.subscription_key_parameter_names != null && length(v.subscription_key_parameter_names) > 0 }
}
output "api_management_apis_subscription_required" {
  description = "Map of subscription_required values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.subscription_required if v.subscription_required != null }
}
output "api_management_apis_terms_of_service_url" {
  description = "Map of terms_of_service_url values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.terms_of_service_url if v.terms_of_service_url != null && length(v.terms_of_service_url) > 0 }
}
output "api_management_apis_version" {
  description = "Map of version values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.version if v.version != null && length(v.version) > 0 }
}
output "api_management_apis_version_description" {
  description = "Map of version_description values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.version_description if v.version_description != null && length(v.version_description) > 0 }
}
output "api_management_apis_version_set_id" {
  description = "Map of version_set_id values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.version_set_id if v.version_set_id != null && length(v.version_set_id) > 0 }
}

