variable "GITHUB_TOKEN" {
  description = "token de conexion con github"
  type        = string
}
variable "organizacion" {
  description = "Nombre de mi organizacion"
  type        = string
}
variable "team" {
  description = "nombre del equipo a crear en GitHub"
  type        = string
  default     = "devops-team"
}
variable "repo_template" {
  description = "nombre del template"
  type        = string
}
variable "repositorios" {
  description = "Nombre de los repositorios a crear"
  type        = list(string)
}
variable "branches" {
  description = "Nombre de los branches a crear"
  type        = list(string)
}
variable "protected_branches" {
  description = "Nombre de los branches protegidos"
  type        = list(string)
}
variable "approver" {
  description = "Usuario aprobador de PULL REQUEST"
  type        = string
}
