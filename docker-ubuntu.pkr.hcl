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
  tls = true
  tls_cert_path = "/certs/client"
  tls_verify = true
  docker_host = "tcp://docker:2376"

}

build {
  name    = "learn-packer"
  sources = [
    "source.docker.ubuntu"
  ]
  
}