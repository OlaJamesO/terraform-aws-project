terraform {
  backend "s3" {
    bucket = "james-terra-jameso-state"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}