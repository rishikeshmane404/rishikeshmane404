provider "google" {
  project = var.project_id
  region  = var.region
}

module "artifact_registry" { 
source = "./_modules/artifact_registry/"
}

module "cloud_run" { 
source = "./_modules/cloud_run/"
}

module "secret_manager" { 
source = "./_modules/secret_manager/"
}

module "sql_db" { 
source = "./_modules/sql_db/"
}