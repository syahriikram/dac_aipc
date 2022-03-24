variable DO_token {
    type = string
    sensitive = true
}

variable droplet_image {
    type = string
    default = "ubuntu-20-04-x64"
}

variable droplet_size {
    type = string
    default = "s-1vpcu-1gb"
}

variable droplet_region {
    type = string
    default = "sgp1"
}

source digitalocean mydroplet {
    api_token = var.DO_token
    region = var.droplet_region
    image = var.droplet_image
    size = var.droplet_size
    ssh_username = "root"
    snapshot_name = "mydroplet"
}

build {
    sources = [ 
        "source.digitalocean.mydroplet"
    ]

    provisioner "ansible-local" {
        playbook_file = "playbook.yaml"
    }
}