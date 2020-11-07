provider "aws" {
  region     = "us-west-2"
}
module "network" {
  source = "../modules/vpc-modules"
}