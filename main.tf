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

resource "random_string" "random" {
  length = 10
}

output "str" {
  value = random_string.random.result
}
