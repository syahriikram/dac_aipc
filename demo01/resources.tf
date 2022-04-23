data digitalocean_ssh_key do_ssh_key {
    # resource name on digitalocean
    name = "sshkey"
}

# image
resource docker_image dov-bear {
    name = "chukmunnlee/dov-bear:v2"
    keep_locally = true
}

# container
resource docker_container dov-bear-container {
    count = 3
    name = "dov-${count.index}"
    image = docker_image.dov-bear.latest
    ports {
        internal = 3000
        # external = 8080
    }
}

output dov-names {
    value = docker_container.dov-bear-container[*].name
}

output external-ports {
    value = join(",", [ for p in docker_container.dov-bear-container[*].ports[*]: element(p, 0).external ])
}

output do_ssh_key_fingerprint {
    value = data.digitalocean_ssh_key.do_ssh_key.fingerprint
}