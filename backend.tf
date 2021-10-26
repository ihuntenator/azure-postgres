terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ihuntenator"

    workspaces {
      name = "lab-ihuntenator-azure-postgres"
    }
  }
}

