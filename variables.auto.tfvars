credentials        = "./terraform-gke-keyfile.json"
project_id         = "gcp-test-263020"
region             = "us-central1"
zones              = ["us-central1-a", "us-central1-b", "us-central1-c"]
name               = "gke-cluster"
machine_type       = "g1-small"
min_count          = 1
max_count          = 3
disk_size_gb       = 10
service_account    = "terraform-gke@gcp-test-263020.iam.gserviceaccount.com"
initial_node_count = 3