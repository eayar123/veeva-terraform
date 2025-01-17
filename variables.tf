variable "region" {
  description = "AWS region"
  type        = string
  default = "us-east-2"
}

variable "username" {
  description = "dockerhub user name"
  type = string
}

variable "password" {
  description = "dockerhub password"
  type = string
}