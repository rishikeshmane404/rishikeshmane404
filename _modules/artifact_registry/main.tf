#provider "google" {
#  project = var.project_id
#  region  = var.region
#}

resource "google_artifact_registry_repository" "my_repo" {
  provider = google
  location = var.region
  repository_id = var.repo-name
  description = "c5 Artifact Registry Repository"
  format = "DOCKER"  # other formats: MAVEN, NPM, APT, YUM, PYTHON
  mode = "STANDARD_REPOSITORY"
}
