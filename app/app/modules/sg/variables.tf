variable "security_group_name" {
  description = "Name of the security group"
  type        = string
  default     = "default-security-group"
}

variable "security_group_tags" {
  description = "Tags for the security group"
  type        = map
  default     = {
    Name = "security_group"
  }
}