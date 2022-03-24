packer {
    required_version = "> 1.8.0"
    required_plugins {
        digitalocean = {
            source = "github.com/hashicorp/digitalocean"
            version = ">= 1.0.0"
        }
    }
}