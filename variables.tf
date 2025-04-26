variable "cidr_block" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16" 
}

variable "vpc_name" {
  description = "VPC"
  type        = string
  default     = "my-vpc"
}

variable "public_subnet_cidr" {
  description = "public subnet CIDR"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the public subnet"
  type        = string
  default     = "us-east-1a"
}

variable "public_subnet_name" {
  description = "Name of the public subnet"
  type        = string
  default     = "public-subnet"
}

variable "private_subnet_cidr" {
  description = "private subnet CIDR"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_name" {
  description = "private subnet name"
  type        = string
  default     = "private-subnet"
}
