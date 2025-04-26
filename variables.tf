variable "cidr_block" {
  description = "VPC CIDR"
  type        = string 
}

variable "vpc_name" {
  description = "VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "public subnet CIDR"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the public subnet"
  type        = string
}

variable "public_subnet_name" {
  description = "Name of the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "private subnet CIDR"
  type        = string
}

variable "private_subnet_name" {
  description = "private subnet name"
  type        = string
}
