variable "appmgmt_control_monitored_instances_lookup" {
  description = <<EOT
Map of appmgmt_control_monitored_instances_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    display_name   = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

