variable "name" {
  type = string
}

variable "namespace_id" {
  type    = number
  default = null
}

variable "project_variables" {
  type    = map(any)
  default = {}
}

variable "approvals_required" {
  type    = number
  default = 1
}

variable "reset_approvals_on_push" {
  type    = bool
  default = true
}

variable "disable_overrides" {
  type    = bool
  default = true
}

variable "author_approval" {
  type    = bool
  default = false
}

variable "disable_committers_approval" {
  type    = bool
  default = true
}

variable "default_branch" {
  type    = string
  default = "main"
}

variable "merge_access_level" {
  type    = string
  default = "maintainer"
}

variable "push_access_level" {
  type    = string
  default = "developer"
}

# Approval rules don't work on Gitlab-CE
variable "enable_approval_rules" {
  type    = bool
  default = false
}

variable "deploy_key" {
  type    = string
  default = nil
}

