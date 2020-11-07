provider "aws" {
    region = "us-west-2"
}
module "servers" {
  source = "../modules/ec2"

}