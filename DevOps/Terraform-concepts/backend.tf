terraform {
  backend "s3" {
    bucket = "backend-terraform-2020"
    key    = "terraform-state-file"
    region = "us-west-2"
    dynamodb_table = "terrraform"
  }
}