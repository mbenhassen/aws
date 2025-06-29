variable "eip_tags" {
  description = "Tags for the EIP"
  type        = map
  default     = {
    Name = "EIP"
  }
  
}