
#LOCATION

variable "region" {
 type = string
 default = "eu-west-1"
}


#FOR INSTANCES

# In this part you can add as many ami as you want create
variable "ami_id" {
  type = map
  default = {eu-west-1 = "ami-0f377b303df4963ab"}
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}