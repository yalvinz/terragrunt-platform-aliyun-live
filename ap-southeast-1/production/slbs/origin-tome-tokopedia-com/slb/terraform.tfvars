terragrunt = {
  include {
    path = "${find_in_parent_folders()}"
  }
  terraform {
    source = "git::git@github.com:yalvinz/terragrunt-aliyun-modules.git//slb"
  }
}

# Vswitch
vsw_remote_state_key = "vswitches/slb/terraform.tfstate"

# SLB
slb_amount                = 2
slb_name                  = "origin-tome-tokopedia-com"
slb_specification         = "slb.s3.large"
slb_internet              = true
slb_internet_charge_type  = "PayByTraffic"
slb_vswitch_id            = "vsw-t4n9wgqc6z1f4aeb4orpv"

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
