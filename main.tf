resource "aws_config_config_rule" "required_tags" {
  for_each = var.required_tags

  name        = "required-tag-${each.key}"
  description = "Checks if resources are deployed with the required tag: ${each.key}"

  source {
    owner             = "AWS"
    source_identifier = "REQUIRED_TAGS"
  }

  scope {
    compliance_resource_types = var.resource_types
  }

  input_parameters = jsonencode(
    each.value != "" ? {
      tag1Key   = each.key
      tag1Value = each.value
      } : {
      tag1Key = each.key
    }
  )

  tags = var.tags
}
