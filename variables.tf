variable "resource_types" {
  description = "Resource types to check for tags"
  type        = list(string)
  default     = []
}

variable "required_tags" {
  description = "A map of required resource tags. Format is tagNKey, tagNValue, where N is int. Values are optional."
  type        = map(string)
  default = {
    env              = ""
    datadog_managed  = "true,false,critical"
    rhythmic_managed = "true,false"
    code_managed_at  = ""
    code_managed_by  = ""
    app              = ""
    backup_policy    = ""
    component        = ""
    cost_center      = ""
    dlm_policy       = ""
    profile          = ""
    schedule         = ""
    service          = ""
    version          = ""
  }
}

variable "tags" {
  default     = {}
  description = "User-Defined tags"
  type        = map(string)
}
