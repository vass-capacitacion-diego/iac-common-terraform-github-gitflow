resource "github_repository" "template" {
  name        = var.repo_template
  description = "Repositorio template - GitFlow"
  visibility  = "private"
  is_template = true
}

resource "github_repository" "repositorios" {
  count       = length(var.repositorios)
  name        = var.repositorios[count.index]
  description = "My awesome codebase GitHub"
  visibility  = "public"

  template {
    owner      = var.organizacion
    repository = github_repository.template.name
  }
}
resource "github_branch" "branches" {
  count      = length(var.branches)
  repository = github_repository.repositorios[0].name
  branch     = var.branches[count.index]
}
resource "github_branch_protection" "branch_protection" {
  count         = length(var.protected_branches)
  repository_id = github_repository.repositorios[0].name
  
  pattern          = var.protected_branches[count.index]
  enforce_admins   = true
  allows_deletions = true

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 1
  }
}
