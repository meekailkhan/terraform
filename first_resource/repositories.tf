resource "github_repository" "first-resource" {
  name       = "terraform_repository"
  visibility = "public"
  auto_init  = true
  # description = "This is repository create through terraform"
}


output "repourl" {
  value = github_repository.first-resource.ssh_clone_url
}

output "repohtmlurl" {
  value = github_repository.first-resource.html_url
}
# resource "github_repository" "second-resource" {
#   name        = "second_terraform_repository"
#   description = "This is repository create through terraform this is second repo"

#   visibility = "public"
#   auto_init = true
# }