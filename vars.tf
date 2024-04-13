
//provider.tf variables
variable "region" {
  description = "The region where resources will be created"
  type        = string
  default     = "us-central1"
}

variable "project_id" {
  description = "The Google Cloud project ID"
  type        = string
  default     = "gke-cluster-420217"
}

//main.tf variables
variable "sa_account_id" {
  description = "The service account ID"
  type        = string
  default     = "gke-cluster-sa"
}

variable "cluster_name" {
  description = "The name of the gke cluster"
  type        = string
  default     = "gke-cluster"
}

variable "cluster_location" {
  description = "The location of the gke cluster"
  type        = string
  default     = "us-central1-a"
}

variable "node_disk_size" {
  description = "The disk size of the node"
  type        = number
  default     = 60
}

