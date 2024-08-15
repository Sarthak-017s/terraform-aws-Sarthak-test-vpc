variable "vpc_connfig" {
    description = "To get the CIDR and Name of VPC from the user"
  type = object({
    cidr_block = string
    Name = string
  })
}

variable "subnet_config" {
    description = "To get CIDR and AZ"
  type = map(object({
    cidr_block = string
    az = string
    public = optional(bool, false)
  }))
}