terragrunt = {
  include {
    path = "${find_in_parent_folders()}"
  }
  terraform {
    source = "git::git@github.com:yalvinz/terragrunt-aliyun-modules.git//ess-scaling-group"
  }
}

# ESS scaling group
esssg_name        = "go-testapp"
esssg_min_size    = 1
esssg_max_size    = 4
esssg_vswitch_ids = [
  "vsw-t4nhva77qex824cvdtq2g",
  "vsw-t4nfpoahcaaa7s0wpzcri",
  "vsw-t4n9wgqc6z1f4aeb4orpv",
  "vsw-t4nl7k3u7vqgihdwl2r93"
]