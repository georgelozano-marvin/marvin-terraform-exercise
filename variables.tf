variable "project" {
  type        = string
  default     = "marvin-demo"
  description = "Project/name prefix for resources"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "Environment tag"
}

variable "aws_region" {
  type        = string
  default     = "us-west-2"
  description = "AWS region"
}

variable "az" {
  type        = string
  default     = "us-west-2a"
  description = "Availability zone for the public subnet"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.10.0.0/16"
  description = "VPC CIDR block"
}

variable "public_subnet_cidr" {
  type        = string
  default     = "10.10.1.0/24"
  description = "Public subnet CIDR"
}

variable "allowed_ssh_cidr" {
  type        = string
  default     = ""
  description = "CIDR allowed for SSH (leave blank to disable SSH entirely; e.g., '203.0.113.4/32')"
}
