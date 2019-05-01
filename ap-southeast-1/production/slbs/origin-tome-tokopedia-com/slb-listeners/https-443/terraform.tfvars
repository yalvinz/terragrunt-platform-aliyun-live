terragrunt = {
  dependencies {
    paths = ["../../slb"]
  }
  include {
    path = "${find_in_parent_folders()}"
  }
  terraform {
    source = "git::git@github.com:yalvinz/terragrunt-aliyun-modules.git//slb-listener"
  }
}

# SLB
slb_remote_state_key = "slbs/origin-tome-tokopedia-com/slb/terraform.tfstate"

# SLB listener
slbl_acl_status = "off"
slbl_backend_port = "80"
slbl_enable_http2 = "on"
slbl_frontend_port = "443"
slbl_gzip = "true"
slbl_health_check = "on"
slbl_health_check_connect_port = "80"
slbl_health_check_domain = "tome.tokopedia.com"
slbl_health_check_http_code = "http_2xx,http_3xx"
slbl_health_check_interval = "10"
slbl_health_check_timeout = "5"
slbl_health_check_uri = "/health"
slbl_health_threshold = "3"
slbl_unhealthy_threshold = "3"
slbl_idle_timeout = "15"
slbl_protocol = "https"
slbl_request_timeout = "60"
slbl_scheduler = "wrr"
slbl_ssl_certificate_id = "1208559439424161_156c5b3fd66"
slbl_sticky_session = "off"
slbl_tls_cipher_policy = "tls_cipher_policy_1_0"

slbl_x_forwarded_for = [
  {
    retrive_slb_id    = "false"
    retrive_slb_ip    = "false"
    retrive_slb_proto = "false"
  }
]
