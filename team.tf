/*
resource "github_team" "team" {
  name        = var.team
  description = "Some cool team"
  privacy     = "secret"
}

resource "github_team_members" "some_team_members" {
  team_id = github_team.team.id

  members {
    username = "jthan24"
    role     = "maintainer"
  }

}

resource "github_team_repository" "team_iac" {
  team_id    = github_team.team.id
  repository = github_repository.repositorios.name
  permission = "maintain"
}
*/
