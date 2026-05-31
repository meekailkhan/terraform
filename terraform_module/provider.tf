provider "aws" {
  access_key = "test"
  region     = "us-east-1"
  secret_key = "test"

  endpoints {
    ec2 = "http://localhost:4566"
  }

  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
}