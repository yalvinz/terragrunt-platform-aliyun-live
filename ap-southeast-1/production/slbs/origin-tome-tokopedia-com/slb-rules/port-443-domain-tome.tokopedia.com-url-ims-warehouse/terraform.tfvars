terragrunt = {
  dependencies {
    paths = ["../../slb", "../../slb-listeners/https-443", "../../slb-server-groups/tome-ims"]
  }
  include {
    path = "${find_in_parent_folders()}"
  }
  terraform {
    source = "git::git@github.com:yalvinz/terragrunt-aliyun-modules.git//slb-rule"
  }
}

# SLB
slb_remote_state_key = "slbs/origin-tome-tokopedia-com/slb/terraform.tfstate"

# VServer group
slbsg_remote_state_key = "slbs/origin-tome-tokopedia-com/slb-server-groups/tome-ims/terraform.tfstate"

# SLB rule
slbr_frontend_port = "443"
slbr_domain = "tome.tokopedia.com"
slbr_url = "/ims/warehouse"
