resource "google_container_cluster" "primary" {
  name               = var.name
  location           = var.region
  initial_node_count = 2

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    metadata = {
      disable-legacy-endpoints = "true"
    }

    labels = {
      foo = "realworld"
    }

    tags = ["realworld", "gorilla"]
  }

  timeouts {
    create = "30m"
    update = "40m"
  }
}