data digitalocean_ssh_key do_ssh_key {
    name = "rootkey"
}

// Step 2 - Generate inventory.yaml 
resource local_file inventory_file {
    filename = "inventory.yaml"
    content = templatefile("inventory.tpl", {
        droplet_ip = digitalocean_droplet.ansibledroplet.ipv4_address 
        key_file = "/home/fred/aipc-mar-22/workshop_2/fred_aipc.txt"
    })
    file_permission = "0644"
} 


resource digitalocean_droplet ansibledroplet {
    name = "ansibledroplet"
    image = var.droplet_image
    region = var.droplet_region
    size = var.droplet_size
    ssh_keys = [ data.digitalocean_ssh_key.do_ssh_key.id ]

    connection {
        type = "ssh"
        user = "root"
        host = self.ipv4_address
        private_key = file(var.private_key)
    }

}

