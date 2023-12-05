#Shared state
#provider "openstack" {}

terraform {
  backend "s3" {
    endpoints                   = { s3 = "https://object.api.bgo.nrec.no:8080" }
    bucket                      = "bgo-nrec-windowsdemo"
    use_path_style              = true
    key                         = "bgo.windowstest.tfstate.tf"
    region                      = "bgo"
    skip_credentials_validation = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
  }
}
