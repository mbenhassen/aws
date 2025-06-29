variable "ebs_zone" {
    type = string
    default = "us-east-1a"
    description = "value for the availability zone of the EBS volume"
}
variable "ebs_size" {
    type = number
    default = 8
    description = "value for the size of the EBS volume in GiB"
}
variable "ebs_tag" {
    type = map
    default = {
        Name = "ebs-volume"
    }
    description = "values for the tags to be applied to the EBS volume"
}
