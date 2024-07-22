variable "secrets_json_base64" {
  description = "Base64 encoded JSON secret data"
  type        = string
  default     = "decoded-secrets.json"
}

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

variable "secret-name" {
  description = "The region to deploy to"
  type        = string
  default     = "c5_terraform_secret_manager"
}