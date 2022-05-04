terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}

provider "docker" {
  # Configuration options
  host = "unix:///var/run/docker.sock"
}

# Start a container
resource "docker_container" "foo" {
  name  = "foo"
  ports {
      internal = 80
      external = 80
  }
  image = docker_image.nginx.latest
}

# Find the latest Nginx precise image.
resource "docker_image" "nginx" {
  name = "nginx:latest"
}