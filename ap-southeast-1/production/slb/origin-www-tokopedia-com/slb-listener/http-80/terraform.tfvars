terragrunt = {
  dependencies {
    paths = ["../../slb", "../https-443"]
  }
  include {
    path = "${find_in_parent_folders()}"
  }
  terraform {
    source = "../../../../../../../modules//slb-listener"
  }
}

# SLB
slb_remote_state_key = "slb/origin-www-tokopedia-com/slb/terraform.tfstate"

# SLB listener
use_redirect = true
slbl_frontend_port = "80"
slbl_protocol = "http"
slbl_listener_forward = "on"
slbl_forward_port = "443"
