packer {
  required_plugins {
    docker = {
      version = ">= 1.0.9"
      source = "github.com/hashicorp/docker"
    }
  }
}

source "docker" "ubuntu" {
  image  = "ubuntu:20.04"
  commit = true
}

build {
  name    = "learn-packer"
  sources = [
    "source.docker.ubuntu"
  ]

}