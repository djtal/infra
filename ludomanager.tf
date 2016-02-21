resource "digitalocean_droplet" "ludomanager" {
    image = "${var.do_image_id}"
    name = "www-1"
    region = "ams3"
    size = "512mb"
    private_networking = true
    ssh_keys = [
      "${var.ssh_fingerprint}"
    ]

  connection {
      user = "root"
      type = "ssh"
      key_file = "${var.pvt_key}"
      timeout = "2m"
  }

    /* provisioner "remote-exec" { */
    /* inline = [ */
    /*   "export PATH=$PATH:/ur/bin", */
    /*   # install nginx */
    /*   "sudo apt-get update", */
    /*   "sudo apt-get -y install nginx" */
    /* ] */
  /* } */
}
