output "api_management_apis_id" {
  description = "Map of id values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.id }
}
output "api_management_apis_api_management_name" {
  description = "Map of api_management_name values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.api_management_name }
}
output "api_management_apis_api_type" {
  description = "Map of api_type values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.api_type }
}
output "api_management_apis_contact" {
  description = "Map of contact values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.contact }
}
output "api_management_apis_description" {
  description = "Map of description values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.description }
}
output "api_management_apis_display_name" {
  description = "Map of display_name values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.display_name }
}
output "api_management_apis_import" {
  description = "Map of import values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.import }
}
output "api_management_apis_is_current" {
  description = "Map of is_current values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.is_current }
}
output "api_management_apis_is_online" {
  description = "Map of is_online values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.is_online }
}
output "api_management_apis_license" {
  description = "Map of license values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.license }
}
output "api_management_apis_name" {
  description = "Map of name values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.name }
}
output "api_management_apis_oauth2_authorization" {
  description = "Map of oauth2_authorization values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.oauth2_authorization }
}
output "api_management_apis_openid_authentication" {
  description = "Map of openid_authentication values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.openid_authentication }
}
output "api_management_apis_path" {
  description = "Map of path values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.path }
}
output "api_management_apis_protocols" {
  description = "Map of protocols values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.protocols }
}
output "api_management_apis_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.resource_group_name }
}
output "api_management_apis_revision" {
  description = "Map of revision values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.revision }
}
output "api_management_apis_revision_description" {
  description = "Map of revision_description values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.revision_description }
}
output "api_management_apis_service_url" {
  description = "Map of service_url values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.service_url }
}
output "api_management_apis_source_api_id" {
  description = "Map of source_api_id values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.source_api_id }
}
output "api_management_apis_subscription_key_parameter_names" {
  description = "Map of subscription_key_parameter_names values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.subscription_key_parameter_names }
}
output "api_management_apis_subscription_required" {
  description = "Map of subscription_required values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.subscription_required }
}
output "api_management_apis_terms_of_service_url" {
  description = "Map of terms_of_service_url values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.terms_of_service_url }
}
output "api_management_apis_version" {
  description = "Map of version values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.version }
}
output "api_management_apis_version_description" {
  description = "Map of version_description values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.version_description }
}
output "api_management_apis_version_set_id" {
  description = "Map of version_set_id values across all api_management_apis, keyed the same as var.api_management_apis"
  value       = { for k, v in azurerm_api_management_api.api_management_apis : k => v.version_set_id }
}

