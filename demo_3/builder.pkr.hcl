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
