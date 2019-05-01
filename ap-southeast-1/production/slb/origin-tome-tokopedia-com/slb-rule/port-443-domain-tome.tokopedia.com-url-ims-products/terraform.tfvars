terragrunt = {
  dependencies {
    paths = ["../../slb", "../../slb-listener/https-443", "../../slb-server-group/tome-ims"]
  }
  include {
    path = "${find_in_parent_folders()}"
  }
  terraform {
    source = "../../../../../../../modules//slb-rule"
  }
}

# SLB
slb_remote_state_key = "slb/origin-tome-tokopedia-com/slb/terraform.tfstate"

# VServer group
slbsg_remote_state_key = "slb/origin-tome-tokopedia-com/slb-server-group/tome-ims/terraform.tfstate"

# SLB rule
slbr_frontend_port = "443"
slbr_domain = "tome.tokopedia.com"
slbr_url = "/ims/products"
