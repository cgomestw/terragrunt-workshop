terraform {
  source = "git@github.com:cgomestw/terraform-s3-module.git"
    extra_arguments "custom_vars" {
    commands = ["apply", "console", "destroy", "import", "plan", "push", "refresh"]

    arguments = ["-var-file=local.tfvars"]
  }
}

include {
  path = find_in_parent_folders()
}
