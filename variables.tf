variable "associate_public_ip_address" {
  type        = bool
  description = "Boolean value as to whether to associate a public IP address with the instance"
  default     = false
}
variable "aws_access_key" {
  type        = string
  description = "AWS access key"
}
variable "aws_secret_key" {
  type        = string
  description = "AWS secret key"
}
variable "instance_type" {
  type        = string
  description = "Type of EC2 instance to provision"
  default     = "t3.small"
}
variable "key_name" {
  type        = string
  description = "AWS EC2 SSH key name"
}
variable "nginx_agent_crt" {
  type        = string
  description = "NGINX Agent Certificate"
  default     = null
}
variable "nginx_agent_key" {
  type        = string
  description = "NGINX Agent Key"
  default     = null
}
variable "nginx_repo_crt" {
  type        = string
  description = "NGINX Repository Certificate"
}
variable "nginx_repo_key" {
  type        = string
  description = "NGINX Repository Key"
}
variable "nms_host" {
  type        = string
  description = "NMS Host FQDN"
  default     = null
}
variable "owner_name" {
  type        = string
  description = "Owner name"
}
variable "owner_email" {
  type        = string
  description = "Owner email address"
}
variable "subnet_id" {
  type        = string
  description = "VCP Subnet ID"
}
variable "vpc_security_group_ids" {
  type        = list(any)
  description = "List of VCP Security Group IDs"
}
locals {
  owner_name_safe = lower(replace(var.owner_name, " ", "-"))
}
