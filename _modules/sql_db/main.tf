
# it is still pending, becuause it requires VPC, & VPC is not created till now

#provider "google" {
#  project = var.project_id
#  region  = var.region
#}

resource "google_sql_database_instance" "mysql_instance" {
  name             = var.db_instance_name
  database_version = "MYSQL_8_0"
  region           = "us-central1"

  settings {
    tier = "db-f1-micro"  # Change the tier as per your requirements

    backup_configuration {
      enabled = true
    }

    ip_configuration {
      ipv4_enabled    = false
      private_network = "projects/mm-programming/global/networks/default"
        
    }

    location_preference {
      zone = "us-central1-a"
    }
  }
}

resource "google_sql_user" "mysql_user" {
  name     = "dbuser"
  instance = google_sql_database_instance.mysql_instance.name
  password = "yourpassword"  # Replace with a secure password
}

resource "google_sql_database" "default_db" {
  name     = "default_db"
  instance = google_sql_database_instance.mysql_instance.name
}
