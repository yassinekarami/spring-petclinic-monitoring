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
    endpoints = {
        s3 = "https://s3.fr-par.scw.cloud"
    }
    access_key = var.access_key
    secret_key = var.secret_key
    skip_credentials_validation = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
  }
  required_version = ">= 0.13"
}
