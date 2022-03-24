data digitalocean_ssh_key do_ssh_key {
    name = "rootkey"
}

data "digitalocean_image" "packerdroplet" {
  name = "packerdroplet"
}


resource digitalocean_droplet codeserverdroplet {
    name = "codeserverdroplet"
    image = data.digitalocean_image.packerdroplet.id
    size = var.droplet_size
    
    region = var.droplet_region
    ssh_keys = [ data.digitalocean_ssh_key.do_ssh_key.id ]
}

resource local_file inventory {
    filename = "inventory.yaml"
    file_permission = 0644
    content = templatefile("inventory.yaml.tpl", {
        host_name = digitalocean_droplet.codeserverdroplet.name
        host_ip = digitalocean_droplet.codeserverdroplet.ipv4_address
        private_key = var.private_key
        public_key = var.public_key
        cs_password = var.cs_password
    })
}

output ip_addr {
    value = digitalocean_droplet.codeserverdroplet.ipv4_address
}