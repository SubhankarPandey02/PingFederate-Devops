provider "pingfederate" {
  https_host      = var.pf_admin_url
  admin_api_path  = "/pf-admin-api/v1"
  product_version = var.pf_product_version

  username = var.pf_username
  password = var.pf_password

  insecure_trust_all_tls = true
}
