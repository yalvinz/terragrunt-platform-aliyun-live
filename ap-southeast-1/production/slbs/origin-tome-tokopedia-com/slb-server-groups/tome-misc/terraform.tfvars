terragrunt = {
  dependencies {
    paths = ["../../slb"]
  }
  include {
    path = "${find_in_parent_folders()}"
  }
  terraform {
    source = "git::git@github.com:yalvinz/terragrunt-aliyun-modules.git//slb-server-group"
  }
}

# SLB
slb_remote_state_key = "slbs/origin-tome-tokopedia-com/slb/terraform.tfstate"

# SLB server group
slbsg_name = "tome-misc"
