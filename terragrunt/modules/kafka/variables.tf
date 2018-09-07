# VPC vars --------------------------
variable "vpc_cidr" {
  type        = "string"
  description = "assigning cidr block for vpc"
}

# subnet cidr block vars ----------------------
variable "subnet_cidr" {
  type        = "string"
  description = "assigning cidr block for subnets"
}

variable "subnet2_cidr" {
  type        = "string"
  description = "assigining cidr blocks for subnet2"
}

# availability zones vars-------
variable "azs" {
  type        = "list"
  description = "assigning availability zones"
}

# name variable
variable "kafka_name" {
  type        = "string"
  description = "providing a name"
}

# ami variable
variable "ami_id" {
  type        = "string"
  description = "assiginiig required image id"
}

# instance type variable
variable "instype_id" {
  type        = "string"
  description = "providing different types of instances"
}

#region variable
variable "region" {
  type        = "string"
  description = "assigining a region for vpc"
}
