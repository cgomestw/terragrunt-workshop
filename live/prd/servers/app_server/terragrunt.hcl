terraform {
    source = "/home/cgomes/workspace/Palestras/Terraform+Terragrunt/live/modulos/ec2"
    extra_arguments "custom_vars" {
    commands = ["apply", "console", "destroy", "import", "plan", "push", "refresh"]
    arguments = ["-var-file=local.tfvars"]
  }
}