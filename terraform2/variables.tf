variable "region" {
  description = "region where the server will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "profile_name" {
  description = "region's profile"
  type        = string
  default     = "default"
}


variable "ami" {
  description = "amazon machine image"
  type        = string
  default     = "ami-0a5c3558529277641"
}

variable "instance_type" {
  description = "server instance type"
  type        = string
  default     = "t2.micro"
}
