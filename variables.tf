variable "workitemtrackingprocess_lists" {
  description = <<EOT
Map of workitemtrackingprocess_lists, attributes below
Required:
    - items
    - name
Optional:
    - is_suggested
    - type
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    items        = list(string)
    name         = string
    is_suggested = optional(bool)
    type         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_lists : (
        length(trimspace(v.name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_lists : (
        v.type == null || (contains(["string", "integer"], v.type))
      )
    ])
    error_message = "must be one of: \"string\", \"integer\""
  }
}

