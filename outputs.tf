output "public_ip" {
  value       = aws_instance.web.public_ip
  description = "Public IP of the web server"
}

output "hello_world_url" {
  value       = "http://${aws_instance.web.public_ip}"
  description = "URL to test the Hello World page"
}
