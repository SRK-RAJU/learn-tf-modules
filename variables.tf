#variable "vpc_name" {
#  description = "Name of VPC"
#  type        = string
#  default     = "example-vpc"
#}
#
#variable "vpc_cidr" {
#  description = "CIDR block for VPC"
#  type        = string
#  default     = "10.0.0.0/16"
#}
#
#variable "vpc_azs" {
#  description = "Availability zones for VPC"
#  type        = list(string)
#  default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
#}
#
#variable "vpc_private_subnets" {
#  description = "Private subnets for VPC"
#  type        = list(string)
#  default     = ["10.0.1.0/24", "10.0.2.0/24"]
#}
#
#variable "vpc_public_subnets" {
#  description = "Public subnets for VPC"
#  type        = list(string)
#  default     = ["10.0.101.0/24", "10.0.102.0/24"]
#}
#
#variable "vpc_enable_nat_gateway" {
#  description = "Enable NAT gateway for VPC"
#  type        = bool
#  default     = true
#}
#
#variable "vpc_tags" {
#  description = "Tags to apply to resources created by VPC module"
#  type        = map(string)
#  default = {
#    Terraform   = "true"
#    Environment = "dev"
#  }
#}
#variable "ami" {
#  description = "ID of AMI to use for the instance"
#  type        = string
#  default     = ""
#}
##variable "instance_type" {
##  description = "The type of instance to start"
##  type        = string
##  default     = "t3.micro"
##}
#variable"instance_type"{}
#variable "NAME" {}
#variable "generated-key" {
#  type        = string
#  default     = "inst-key"
#  description = "Key-pair generated by Terraform"
#}
#variable"spot_type" {}
#variable "spot_behavior" {}


## hashicrop code variables


variable "NAME" {}
variable "CIDR" {}
variable "AZ" {}
variable "SUBNET" {}
variable "PVT-SUBNET" {}
variable"spot_type" {}
variable "spot_behavior" {}
variable "ami" {}
variable"instance_type"{}
variable "wave-key" {
  type        = string
  default     = "inst-key"
  description = "Key-pair generated by Terraform"
}