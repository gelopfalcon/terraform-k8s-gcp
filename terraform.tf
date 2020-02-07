terraform {
  backend "gcs" {
    credentials = "./terraform-gke-keyfile.json"
    bucket  = "tf-state-k8s-gcs"
    prefix  = "terraform/state"
  }
}