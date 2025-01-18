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

variable "private_subnets" {
  description = "cidr blocks for private subnets"
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  description = "cidr blocks for public subnets"
  default = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "cluster_version" {
  description = "eks cluster version"
  default = "1.29"
}

variable "nginx_version" {
  description = "helm chart version for the nginx app"
  default = "0.2.0"
}

variable "caller_version" {
  description = "helm chart version for the caller app"
  default = "0.1.0"
}

variable "namespace" {
  description = "namespace to deploy the chart on."
  default = "default"
}