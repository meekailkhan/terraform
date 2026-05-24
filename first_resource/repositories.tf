resource "github_repository" "first-resource" {
  name        = "terraform_repository"
  description = "This is repository create through terraform"

  visibility = "public"
  auto_init = true
}

resource "github_repository" "second-resource" {
  name        = "second_terraform_repository"
  description = "This is repository create through terraform this is second repo"

  visibility = "public"
  auto_init = true
}