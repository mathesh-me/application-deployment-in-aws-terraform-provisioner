output "Web-link" {
  value = "http://${aws_instance.server.public_ip}"
}
