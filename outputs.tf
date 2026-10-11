output "ses_templates_id" {
  description = "Map of id values across all ses_templates, keyed the same as var.ses_templates"
  value       = { for k, v in aws_ses_template.ses_templates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ses_templates_arn" {
  description = "Map of arn values across all ses_templates, keyed the same as var.ses_templates"
  value       = { for k, v in aws_ses_template.ses_templates : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ses_templates_html" {
  description = "Map of html values across all ses_templates, keyed the same as var.ses_templates"
  value       = { for k, v in aws_ses_template.ses_templates : k => v.html if v.html != null && length(v.html) > 0 }
}
output "ses_templates_name" {
  description = "Map of name values across all ses_templates, keyed the same as var.ses_templates"
  value       = { for k, v in aws_ses_template.ses_templates : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ses_templates_region" {
  description = "Map of region values across all ses_templates, keyed the same as var.ses_templates"
  value       = { for k, v in aws_ses_template.ses_templates : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ses_templates_subject" {
  description = "Map of subject values across all ses_templates, keyed the same as var.ses_templates"
  value       = { for k, v in aws_ses_template.ses_templates : k => v.subject if v.subject != null && length(v.subject) > 0 }
}
output "ses_templates_text" {
  description = "Map of text values across all ses_templates, keyed the same as var.ses_templates"
  value       = { for k, v in aws_ses_template.ses_templates : k => v.text if v.text != null && length(v.text) > 0 }
}

