# Set branch protection on default branch
resource "gitlab_branch_protection" "main" {
  project            = gitlab_project.main.id
  branch             = var.default_branch
  merge_access_level = var.merge_access_level
  push_access_level  = var.push_access_level
}

# Set minimum number of approvals required for merges
resource "gitlab_project_approval_rule" "main" {
  count              = var.enable_approval_rules == true ? 1 : 0
  project            = gitlab_project.main.id
  name               = "Require approval"
  approvals_required = var.approvals_required
}

# Set merge request approval rules
resource "gitlab_project_level_mr_approvals" "main" {
  count                                          = var.enable_approval_rules == true ? 1 : 0
  project_id                                     = gitlab_project.main.id
  reset_approvals_on_push                        = var.reset_approvals_on_push
  disable_overriding_approvers_per_merge_request = var.disable_overrides
  merge_requests_author_approval                 = var.author_approval
  merge_requests_disable_committers_approval     = var.disable_committers_approval
}