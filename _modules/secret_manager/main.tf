#provider "google" {
#  project = var.project_id
#  region  = var.region
#}

resource "google_secret_manager_secret" "my_secret" {
  secret_id = var.secret-name
  replication {
    auto {}
  }
}


#resource "google_secret_manager_secret_version" "my_secrets_version" {
#  secret      = google_secret_manager_secret.my_secret.secret_id
#  secret_data = filebase64decode("${path.module}/decoded-secrets.json")
#}

#resource "local_file" "decoded_secrets" {
#   content  = base64decode(var.secrets_json_base64)
#   filename = "${path.module}/decoded-secrets.json"
#}
