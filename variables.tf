variable "ses_templates" {
  description = <<EOT
Map of ses_templates, attributes below
Required:
    - name
Optional:
    - html
    - region
    - subject
    - text
EOT

  type = map(object({
    name    = string
    html    = optional(string)
    region  = optional(string)
    subject = optional(string)
    text    = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.ses_templates : (
        v.html == null || (length(v.html) >= 0 && length(v.html) <= 512000)
      )
    ])
    error_message = "must be between 0 and 512000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.ses_templates : (
        v.text == null || (length(v.text) >= 0 && length(v.text) <= 512000)
      )
    ])
    error_message = "must be between 0 and 512000 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

