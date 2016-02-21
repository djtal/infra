variable "do_token" {}
variable "do_image_id" {}
variable "pub_key" {}
variable "pvt_key" {}
variable "ssh_fingerprint" {}

provider "digitalocean" {
  token = "${var.do_token}"
}
