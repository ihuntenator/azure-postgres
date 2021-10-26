terraform {
  backend "remote" {
    organization = "ihuntenator"

    workspaces {
      name = "lab-ihuntenator-azure-postgres"
    }
  }
}

