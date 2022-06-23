terraform {
  source = "/home/cgomes/workspace/Palestras/Terraform+Terragrunt/v3/s3"
    extra_arguments "custom_vars" {
    commands = ["apply", "console", "destroy", "import", "plan", "push", "refresh"]

    arguments = ["-var-file=local.tfvars"]
  }
}

include {
  path = find_in_parent_folders()
}
