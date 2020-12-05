terraform {
  backend "remote" {
    organization = "norbinsh"

    workspaces {
      name = "prod-advanced-tf"
    }
  }
}
