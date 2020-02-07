# IaC repository

This repository creates the infrastructure needed for creating a regional Kubernetes cluster with high availability (2 pods per zone. There are 3 zones) In addition, there is a `packer.json` which creates a Jenkins image with provisioning (JDK, node, kubectl, etc) in order to run a Jenkins CI/CD.

I'm using a GCP Bucket in order to store the terraform state. The bucket name is `tf-state-k8s-gcs`

## Terraform commands
- terraform init
- terraform plan
- terraform apply

## Packer
`packer build -var machine_type=<machine> -var region=<region> packer.json`
