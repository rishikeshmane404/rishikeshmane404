#provider "google" {
#  project = var.project_id
#  region  = var.region
#}

resource "google_cloud_run_v2_job" "default" {
  name     = var.cloud-run-job-name
  location = var.region

  template {
    template {
      containers {
        image = "us-central1-docker.pkg.dev/mm-programming/artifact-repo/pipeline:latest"
        resources {
          limits = {
            memory = "512Mi"
            cpu    = "1"
          }
        }
      }
      # Optional: Configure task settings
      #task_count = 1  # Number of tasks to run
      #retries    = 3  # Number of retry attempts
    }
  }

}
