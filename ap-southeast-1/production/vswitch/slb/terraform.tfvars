terragrunt = {
  include {
    path = "${find_in_parent_folders()}"
  }
  terraform {
    source = "git::git@github.com:yalvinz/terragrunt-aliyun-modules.git//vswitch"
  }
}

# VPC
vpc_id = "vpc-22im8wpk3"

# Vswitch
vsw_vswitches = [
  {
    zone = "a",
    cidr_block = "172.21.244.0/24",
    rtb_id = "vtb-22rm7hphq"
  },
  {
    zone = "b",
    cidr_block = "172.21.245.0/24",
    rtb_id = "vtb-22rm7hphq"
  },
  {
    zone = "c",
    cidr_block = "172.21.246.0/24",
    rtb_id = "vtb-22rm7hphq"
  }
]

vsw_name = "slb"
