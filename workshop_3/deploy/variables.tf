variable DO_token {
    description = "Access token"
    type = string
    sensitive = true
}

variable docker_host_ip {
    type = string
}

variable private_key {
    type = string
    sensitive = true
}

variable droplet_size {
    type = string
    default = "s-1vcpu-1gb"
}

variable droplet_image {
    type = string
    default = "ubuntu-20-04-x64"
}

variable droplet_region {
    type = string
    default = "sgp1"
}

variable public_key {
    type = string
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDQwLx5PHrj9EC8JiebDzGNrRSlLi8WBKELDNwzOzpcUEN2MOfXkYtyv3ReRHaaYtwkXZ8ZrO/IsdC4QChYIF6IFMbHpwDNrsOcFVZ3pS4dQdGZrbVxk9kiIVrZ5n4n8uJTvfYwIrSEoXyqB3ZfbcBKyV3Mnzd72if+D5buJ2sYbpb4/kNVXPvgjJc86T5Re9zalrkISiNTDFFbOIlAkYI3NeFQmF1fOY48LtHmRnl2MPZqYTtprBC1kbrBDUuQ+j3sQ8hWDd5lRUoexV8EAXYD2wyfJem3fXq0k7C5/HrYF5+FF1XIq+WGNx7Jcw0eUcjoJXIMQipoSWDuEfATDX0N3/pJs+OQgB3hkmVVrcG+c+vqicNsddKO9cVySQWEcnMb9Vyu0vNermiYXY0tAd0c4b1EOsqlMTz5DRxS/gDGhlu12n+VfUb3Q+Q68E2Gpza7BC2paK8Me0govn8DGIv0sUmquFOBTPwTcI47HjqBDc8YakbUnbt78fi4B9BdtWU= root@ubuntu-s-2vcpu-2gb-sgp1-01"
}

variable cs_password {
    type = string
    default = "abc123"
}