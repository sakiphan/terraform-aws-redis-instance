variable "region" {
  description = "The AWS region to deploy in"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance"
  default     = "t2.micro"
}

variable "key_name" {
  description = "The key name to use for the EC2 instance"
  default     = "pet-clinic-server"
}

variable "tags" {
  description = "Tags for the AWS resources"
  default     = "redis-server"
}

variable "redis_instance_ports" {
  description = "List of ports to allow for Redis instance"
  type        = list(number)
  default     = [6379]
}

variable "server_name" {
  description = "The name of the server"
  default     = "Redis Server"
}