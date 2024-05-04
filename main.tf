
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.27.0"
    }
  }
}

provider "google" {
  # Configuration options
  credentials = "inner-replica-417201-419c56bdc169.json"
  region = "eu-west2"
  project = "inner-replica-417201"
}

