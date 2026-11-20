terraform {
  required_version = ">= 1.5.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "plan_check" {
  content  = "Terraform plan validation on push"
  filename = "${path.module}/plan-check.txt"
}
