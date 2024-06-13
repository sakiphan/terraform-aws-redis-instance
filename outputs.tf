output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.redis_instance.id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.redis_instance.public_ip
}