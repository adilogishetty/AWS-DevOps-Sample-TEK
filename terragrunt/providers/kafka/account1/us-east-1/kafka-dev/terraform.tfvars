terragrunt = {
  include {
    path = "${find_in_parent_folders("account1.tfvars")}"
  }

  terraform {
    source = "../../../../../modules//kafka"

    extra_arguments "custom_vars" {
      commands = [
        "apply",
        "plan",
        "import",
        "push",
        "refresh",
        "destroy",
      ]

      # With the get_tfvars_dir() function, you can use relative paths!
      arguments = [
        "-var-file=${get_tfvars_dir()}/../../../../account1.tfvars",
        "-var-file=${get_tfvars_dir()}/../../../kafka.tfvars",
        "-var-file=${get_tfvars_dir()}/../region.tfvars",
        "-var-file=resources.tfvars",
      ]
    }
  }
}
