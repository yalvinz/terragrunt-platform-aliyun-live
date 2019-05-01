terragrunt = {
  remote_state {
    backend = "s3"
    config {
      bucket         = "tkpd-terragrunt-platform-aliyun"
      key            = "state/${path_relative_to_include()}/terraform.tfstate"
      endpoint       = "https://s3-ap-southeast-1.amazonaws.com"
      region         = "ap-southeast-1"
    }
  }

  terraform {
    extra_arguments "extra" {
      commands = ["${get_terraform_commands_that_need_vars()}"]
      required_var_files = [
          "${get_tfvars_dir()}/${find_in_parent_folders("global.tfvars")}"
      ]
      optional_var_files = [
          "${get_tfvars_dir()}/${find_in_parent_folders("env.tfvars", "ignore")}"
      ]
    }
  }
}
