provider "vault" {
  address = "http://vault-internal.shamidevops.online:8200"
  token   = var.token
}

terraform {
  backend "s3" {
    bucket = "terraform-s85"
    key    = "rovoshop-config-values/terraform.tfstate"
    region = "us-east-1"
  }
}
