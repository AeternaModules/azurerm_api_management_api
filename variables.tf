variable "api_management_apis" {
  description = <<EOT
Map of api_management_apis, attributes below
Required:
    - api_management_name
    - name
    - resource_group_name
    - revision
Optional:
    - api_type
    - description
    - display_name
    - path
    - protocols
    - revision_description
    - service_url
    - source_api_id
    - subscription_required
    - terms_of_service_url
    - version
    - version_description
    - version_set_id
    - contact (block):
        - email (optional)
        - name (optional)
        - url (optional)
    - import (block):
        - content_format (required)
        - content_value (required)
        - wsdl_selector (optional, block):
            - endpoint_name (required)
            - service_name (required)
    - license (block):
        - name (optional)
        - url (optional)
    - oauth2_authorization (block):
        - authorization_server_name (required)
        - scope (optional)
    - openid_authentication (block):
        - bearer_token_sending_methods (optional)
        - openid_provider_name (required)
    - subscription_key_parameter_names (block):
        - header (required)
        - query (required)
EOT

  type = map(object({
    api_management_name   = string
    name                  = string
    resource_group_name   = string
    revision              = string
    version               = optional(string)
    terms_of_service_url  = optional(string)
    subscription_required = optional(bool) # Default: true
    source_api_id         = optional(string)
    service_url           = optional(string)
    protocols             = optional(set(string))
    version_description   = optional(string)
    path                  = optional(string)
    display_name          = optional(string)
    description           = optional(string)
    api_type              = optional(string)
    revision_description  = optional(string)
    version_set_id        = optional(string)
    contact = optional(object({
      email = optional(string)
      name  = optional(string)
      url   = optional(string)
    }))
    import = optional(object({
      content_format = string
      content_value  = string
      wsdl_selector = optional(object({
        endpoint_name = string
        service_name  = string
      }))
    }))
    license = optional(object({
      name = optional(string)
      url  = optional(string)
    }))
    oauth2_authorization = optional(object({
      authorization_server_name = string
      scope                     = optional(string)
    }))
    openid_authentication = optional(object({
      bearer_token_sending_methods = optional(set(string))
      openid_provider_name         = string
    }))
    subscription_key_parameter_names = optional(object({
      header = string
      query  = string
    }))
  }))
}

