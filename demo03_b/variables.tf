variable DO_token {
    description = "Access token"
    type = string
    sensitive = true
}

variable droplet_size {
    type = string
    default = "s-1vcpu-2gb"
}

variable droplet_image {
    type = string
    default = "ubuntu-20-04-x64"
}

variable droplet_region {
    type = string
    default = "sgp1"
}