terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}


provider "null" {}

resource "null_resource" "demo" {
  triggers = {
    always_run = timestamp()
  }
}
