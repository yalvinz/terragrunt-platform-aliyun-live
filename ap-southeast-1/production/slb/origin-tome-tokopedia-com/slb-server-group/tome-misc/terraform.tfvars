terragrunt = {
  dependencies {
    paths = ["../../slb"]
  }
  include {
    path = "${find_in_parent_folders()}"
  }
  terraform {
    source = "../../../../../../../modules//slb-server-group"
  }
}

# SLB
slb_remote_state_key = "slb/origin-tome-tokopedia-com/slb/terraform.tfstate"

# SLB server group
slbsg_name = "tome-misc"