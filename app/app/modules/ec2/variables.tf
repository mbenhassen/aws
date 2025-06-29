variable "instance_type" {
    description = "Type of EC2 instance"
    type        = string
    default     = "t2.medium"
  }

variable "key_name" {
    description = "Name of the SSH key pair"
    type        = string
    default     = "projet-terraform"
  
}

variable "tags"{
    description = "Tags for the EC2 instance"
    type        = map
    default     = {
        Name = "ec2"
    }
}

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
  default     = "default-security-group"
}

variable "user" {
    description = "SSH user for the EC2 instance"
    type        = string
    default     = "ubuntu"
  
}