terraform {
  required_version = ">= 0.13"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 2.2"
    }
  }

  backend "kubernetes" {
    secret_suffix     = "state"
    in_cluster_config = true
  }
}
