terraform {
  backend "remote" {
    organization = "norbinsh"

    workspaces {
      name = "dev-advanced-tf"
    }
  }
}
