resource "gitlab_deploy_key" "main" {
  count   = var.deploy_key != null ? 1 : 0
  project = gitlab_project.main.path_with_namespace
  title   = "Deploy key"
  key     = var.deploy_key
}
