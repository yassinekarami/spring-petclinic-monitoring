terraform {
  required_providers {
    scaleway = {
      source = "scaleway/scaleway"
    }
  }
  backend "s3" {
    bucket = "terraform-s3"
    key = "terraform.tfstate"
    region   = "fr-par"
    access_key = var.access_key
    endpoints = {
        s3 = "https://s3.fr-par.scw.cloud"
    }
    skip_credentials_validation = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
  }
  required_version = ">= 0.13"
}
