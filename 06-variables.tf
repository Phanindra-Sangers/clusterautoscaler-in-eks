variable "region" {
  description = "Region"
  default     = "ap-south-1"
  type        = string
}

variable "bu" {

  type        = string
  description = "business unit"
  default     = "monitoring"

}

variable "project" {

  type        = string
  default     = "fraudapi"
  description = "your project name"

}

variable "env" {

  type        = string
  description = "your environment name"
  default     = "poc"

}


#-------------------------------- eks ------------------------------------




variable "eks_cluster_version" {
  description = "EKS Cluster version"
  default     = "1.30"
  type        = string
}

variable "access_entries" {
  description = "Map of access entries to add to the cluster"
  type        = any
  default     = {}
}
variable "cluster_endpoint_public_access" {

  description = "cluster endpoint access true or false "
  default     = true
  type        = bool
}

variable "node_group_name" {

  type        = string
  description = "node group name"
  default     = "core-node-group"

}

variable "eks_node_min_size" {

  default     = 2
  type        = number
  description = "min size of node group"

}

variable "eks_node_max_size" {

  default     = 4
  type        = number
  description = "min size of node group"

}


variable "eks_node_desired_size" {

  default     = 2
  type        = number
  description = "min size of node group"

}

variable "eks_instance_types" {

  type        = list(string)
  default     = ["t2.medium"]
  description = "eks nodes instance types "
}

#---------------------- vpc  -------

variable "vpc_cidr" {
  description = "VPC CIDR"
  default     = "10.107.160.0/24"
  type        = string
}
variable "create_igw" {
  type = bool
  default = true 
}
variable "create_db_subnet_group" {

  type    = bool
  default = true

}
variable "create_db_subnet_route_table" {

  type    = bool
  default = true
}

variable "enable_nat_gw" {
  type    = bool
  default = true
}

variable "single_nat_gw" {

  type    = bool
  default = true

}

variable "enable_dns_hosts" {

  type    = bool
  default = true
}






