terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.27.0"
    }
  }

  backend "gcs" {
    bucket         = "statebucket301"
    prefix         = "terraform/state"
    credentials    = jsondecode(var.gcp_creds)
  }
}

provider "google" {
  region      = "europe-west2"
  project     = "inner-replica-417201"
  credentials = jsondecode(var.gcp_creds)
}

variable "gcp_creds" {
  description = "GCP Credentials JSON"
  type        = string
  sensitive   = true
}
