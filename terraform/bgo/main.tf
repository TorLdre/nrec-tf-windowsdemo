module "node" {
  source = "git@github.com:TorLdre/tf-nrec-node.git?ref=mods_rdp"

  name              = "nrec-tf-windowsdemo"
  node_name         = "windowsdemo-"
  # Enable this to create and update fqdn in NREC
  zone_name         = "win.uib.no"
  domain            = "demo.win.uib.no"
  region            = "bgo"
  node_count        = 2
  ssh_public_key    = "~/.ssh/id_rsa.pub"
  allow_ssh_from_v6 = ["2001:700:200::/56"]
  allow_ssh_from_v4 = ["129.177.0.0/16"]
  allow_rdp_from_v6 = ["2001:700:200::/56"]
  allow_rdp_from_v4 = ["129.177.0.0/16"]
  network           = "uib-dualStack"
  flavor            = "win.large"
  image_name        = "GOLD Windows Server 2022 Standard"
  image_user        = "Admin"
  volume_size       = 20
  user_data         = "windows-postconfig.yaml"
}
