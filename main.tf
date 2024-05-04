terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.27.0"
    }
  }

  backend "gcs" {
    bucket      = "statebucket301"
    prefix      = "terraform/state"
    credentials = "gcp-creds.json"
  }
}

provider "google" {
  region      = "europe-west2"
  project     = "inner-replica-417201"
  credentials = file("${path.module}/gcp-creds.json")
}

variable "gcp_creds_path" {
  description = "Path to the GCP credentials file"
  type        = string
  default     = "gcp-creds.json"
}
