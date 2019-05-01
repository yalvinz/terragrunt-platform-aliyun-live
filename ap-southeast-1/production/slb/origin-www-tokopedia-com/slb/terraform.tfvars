terragrunt = {
  include {
    path = "${find_in_parent_folders()}"
  }
  terraform {
    source = "../../../../../../modules//slb"
    source = "git::git@github.com:yalvinz/terragrunt-aliyun-modules.git//slb"
  }
}

# Vswitch
vsw_remote_state_key = "vswitch/slb/terraform.tfstate"

# SLB
slb_amount                = 2
slb_name                  = "origin-www-tokopedia-com"
slb_specification         = "slb.s3.large"
slb_internet              = true
slb_internet_charge_type  = "PayByTraffic"

slb_expected_zones = [
  {
    master = "c",
    slave  = "b" 
  },
  {
    master = "b",
    slave  = "c"
  }
]
