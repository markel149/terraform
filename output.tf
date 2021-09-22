output "nginx_id" {
  value = docker_container.nginx.id
  description = "Docker container id"
}
