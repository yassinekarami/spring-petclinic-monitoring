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
    endpoint = "s3.fr-par.scw.cloud"
    endpoints = {
        s3 = "https://s3.fr-par.scw.cloud"
    }
    access_key = "SCWB24FBNAM7YV47BG2Y"
    secret_key = "87986698-7a8d-47db-9e33-9fa8c44d29e9"
    skip_credentials_validation = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
  }
  required_version = ">= 0.13"
}
