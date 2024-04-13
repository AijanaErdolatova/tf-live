# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_service_account
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_cluster

resource "google_service_account" "gke-cluster-sa" {
  account_id = var.sa_account_id
}


resource "google_container_cluster" "gke-cluster" {
  name               = var.cluster_name
  location           = var.cluster_location
  initial_node_count = 1
  node_config {
    disk_size_gb    = var.node_disk_size
    service_account = google_service_account.gke-cluster-sa.email
  }

}


