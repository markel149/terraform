terraform {
  required_providers {
     docker = {
        source = "terraform-providers/docker"
     }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
   name        = var.nginx_image
   keep_locally = true
}

resource "docker_container" "nginx" {
   image = docker_image.nginx.latest
   name  = "terratest"
   ports {
      internal = 80
      external = 8080
   }

}
