output "url_git_repositories" {
  description = "URL para clonar los repositorios"
  value       = github_repository.repositorios[*].git_clone_url
}
