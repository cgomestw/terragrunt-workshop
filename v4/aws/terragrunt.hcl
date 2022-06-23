# terragrunt.hcl example
remote_state {
  backend = "s3"
  config = {
    bucket         = "sysadminas-terragrunt-infra"
    region         = "us-east-1"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    encrypt        = true
    dynamodb_table = "sysadminas-lock-table"
    profile        = "default"

    # s3_bucket_tags is an attribute, so an equals sign is REQUIRED
    s3_bucket_tags = {
      Environment = "dev"
      Projeto     = "cloud-platform"
      Owner       = "Cloud Platform Terragrunt"
      Name        = "Terraform state storage"
    }

    # dynamodb_table_tags is an attribute, so an equals sign is REQUIRED
    dynamodb_table_tags = {
      Environment = "dev"
      Projeto     = "cloud-platform"
      Owner       = "Cloud Platform Terragrunt"
      Name        = "Terraform state storage"
    }
  }
}

inputs = {
  tfstate_global_bucket        = "sysadminas-terragrunt-infra"
  tfstate_global_bucket_region = "us-east-1"
}
