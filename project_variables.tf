# Set project variables that are passed in as a map
resource "gitlab_project_variable" "main" {
  count     = length(var.project_variables)
  project   = gitlab_project.main.id
  key       = element(keys(var.project_variables), count.index)
  value     = var.project_variables[element(keys(var.project_variables), count.index)]["value"]
  protected = var.project_variables[element(keys(var.project_variables), count.index)]["protected"] == true ? true : false
  masked    = var.project_variables[element(keys(var.project_variables), count.index)]["masked"] == true ? true : false
}
