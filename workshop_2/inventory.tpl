all: 
    hosts:
        server-0:
            ansible_host: ${droplet_ip}
            ansible_connection: ssh
            ansible_user: root
            ansible_ssh_private_key_file: ${key_file}