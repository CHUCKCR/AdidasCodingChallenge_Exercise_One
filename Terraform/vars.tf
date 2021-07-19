
#LOCATION

variable "region" {
  type    = "string"
  default = "eu-west-1"
}


#FOR INSTANCES

# In this part you can add as many ami as you want create
variable "ami_id" {
  type = "map"
  default = {
    eu-west-1    = "ami-0f377b303df4963ab"
  }
}

variable "instance_type" {
  type    = "string"
  default = "t2.micro"


  variable "key_name" {
  type    = "string"
  default = "ec2-challenge"
}

#FOR NETWORK

  variable "instance_tenancy" {
  description = "A tenancy option for instances launched into the VPC"
  type        = string
  default     = "default"
}


variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "enable_classiclink" {
  description = "Should be true to enable ClassicLink for the VPC. Only valid in regions and accounts that support EC2 Classic."
  type        = bool
  default     = false
}


variable "tags" {
  description = "A map of tags to add to all resources"
  type        = string
  default     = "VPC-CHALLENGE"
}