variable "project_id" {
  description = "The project ID to deploy to"
  type        = string
  default     = "mm-programming"
}

variable "region" {
  description = "The region to deploy to"
  type        = string
  default     = "us-central1"
}

variable "cloud-run-job-name" {
  description = "The region to deploy to"
  type        = string
  default     = "c5-terraform-test-ob"
}