output "api_management_apis" {
  description = "All api_management_api resources"
  value       = azurerm_api_management_api.api_management_apis
}
output "api_management_apis_api_management_name" {
  description = "List of api_management_name values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.api_management_name]
}
output "api_management_apis_api_type" {
  description = "List of api_type values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.api_type]
}
output "api_management_apis_contact" {
  description = "List of contact values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.contact]
}
output "api_management_apis_description" {
  description = "List of description values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.description]
}
output "api_management_apis_display_name" {
  description = "List of display_name values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.display_name]
}
output "api_management_apis_import" {
  description = "List of import values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.import]
}
output "api_management_apis_is_current" {
  description = "List of is_current values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.is_current]
}
output "api_management_apis_is_online" {
  description = "List of is_online values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.is_online]
}
output "api_management_apis_license" {
  description = "List of license values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.license]
}
output "api_management_apis_name" {
  description = "List of name values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.name]
}
output "api_management_apis_oauth2_authorization" {
  description = "List of oauth2_authorization values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.oauth2_authorization]
}
output "api_management_apis_openid_authentication" {
  description = "List of openid_authentication values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.openid_authentication]
}
output "api_management_apis_path" {
  description = "List of path values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.path]
}
output "api_management_apis_protocols" {
  description = "List of protocols values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.protocols]
}
output "api_management_apis_resource_group_name" {
  description = "List of resource_group_name values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.resource_group_name]
}
output "api_management_apis_revision" {
  description = "List of revision values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.revision]
}
output "api_management_apis_revision_description" {
  description = "List of revision_description values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.revision_description]
}
output "api_management_apis_service_url" {
  description = "List of service_url values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.service_url]
}
output "api_management_apis_source_api_id" {
  description = "List of source_api_id values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.source_api_id]
}
output "api_management_apis_subscription_key_parameter_names" {
  description = "List of subscription_key_parameter_names values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.subscription_key_parameter_names]
}
output "api_management_apis_subscription_required" {
  description = "List of subscription_required values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.subscription_required]
}
output "api_management_apis_terms_of_service_url" {
  description = "List of terms_of_service_url values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.terms_of_service_url]
}
output "api_management_apis_version" {
  description = "List of version values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.version]
}
output "api_management_apis_version_description" {
  description = "List of version_description values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.version_description]
}
output "api_management_apis_version_set_id" {
  description = "List of version_set_id values across all api_management_apis"
  value       = [for k, v in azurerm_api_management_api.api_management_apis : v.version_set_id]
}

