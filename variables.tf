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
  validation {
    condition = alltrue([
      for k, v in var.api_management_apis : (
        v.display_name == null || (length(v.display_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_apis : (
        length(v.revision) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_apis : (
        v.revision_description == null || (length(v.revision_description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_apis : (
        v.contact == null || (v.contact.name == null || (length(v.contact.name) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_apis : (
        v.import == null || (length(v.import.content_value) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_apis : (
        v.import == null || (v.import.wsdl_selector == null || (length(v.import.wsdl_selector.service_name) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_apis : (
        v.import == null || (v.import.wsdl_selector == null || (length(v.import.wsdl_selector.endpoint_name) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_apis : (
        v.license == null || (v.license.name == null || (length(v.license.name) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_apis : (
        v.subscription_key_parameter_names == null || (length(v.subscription_key_parameter_names.header) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_apis : (
        v.subscription_key_parameter_names == null || (length(v.subscription_key_parameter_names.query) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_apis : (
        v.version_description == null || (length(v.version_description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_api_management_api's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.ApiManagementApiName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: api_management_name
  #   source:    [from validate.ApiManagementServiceName] !matched
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: path
  #   source:    validate.ApiManagementApiPath: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: protocols[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: api_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: contact.email
  #   source:    validation.IsEmailAddress(...) - no translation rule yet, add one
  # path: contact.url
  #   source:    validation.IsURLWithHTTPorHTTPS(...) - no translation rule yet, add one
  # path: import.content_format
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: license.url
  #   source:    validation.IsURLWithHTTPorHTTPS(...) - no translation rule yet, add one
  # path: terms_of_service_url
  #   source:    validation.IsURLWithHTTPorHTTPS(...) - no translation rule yet, add one
  # path: source_api_id
  #   source:    [from validate.ApiID] !ok
  # path: source_api_id
  #   source:    [from validate.ApiID] err != nil
  # path: oauth2_authorization.authorization_server_name
  #   source:    [from validate.ApiManagementChildName] !matched
  # path: openid_authentication.openid_provider_name
  #   source:    [from validate.ApiManagementChildName] !matched
  # path: openid_authentication.bearer_token_sending_methods[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

