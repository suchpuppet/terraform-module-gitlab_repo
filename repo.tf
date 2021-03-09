# Create the repo
resource "gitlab_project" "main" {
  name           = var.name
  namespace_id   = var.namespace_id
  default_branch = var.default_branch
}
