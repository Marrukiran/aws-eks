# Variables
variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "vpc_name" {
  description = "The name tag for the VPC."
  type        = string
}

variable "azs" {
  type = list(string)
}

variable "public_cidr" {
  description = "List of CIDR blocks for public subnets."
  type        = list(string)
}

variable "private_cidr" {
  description = "List of CIDR blocks for private subnets."
  type        = list(string)
}

variable "gw" {
  description = "Name tag for the Internet Gateway."
  type        = string
}

variable "cidr_block_rt" {
  description = "CIDR block for the public route table."
  type        = string
}

variable "public_rt" {
  description = "Name tag for the public route table."
  type        = string
}

variable "name_eip" {
  description = "Name tag for the Elastic IP."
  type        = string
}

variable "name_nat" {
  description = "Name tag for the NAT Gateway."
  type        = string
}

variable "cidr_block_private" {
  description = "CIDR block for private route table."
  type        = string
}

variable "control_plane_ingress_from_port" {
  description = "Ingress from port for the EKS Control Plane security group."
  type        = number
}

variable "control_plane_ingress_to_port" {
  description = "Ingress to port for the EKS Control Plane security group."
  type        = number
}

variable "control_plane_ingress_protocol" {
  description = "Ingress protocol for the EKS Control Plane security group."
  type        = string
}

variable "control_plane_ingress_cidr_blocks" {
  description = "List of CIDR blocks for ingress to the EKS Control Plane."
  type        = list(string)
}

variable "control_plane_egress_from_port" {
  description = "Egress from port for the EKS Control Plane security group."
  type        = number
}

variable "control_plane_egress_to_port" {
  description = "Egress to port for the EKS Control Plane security group."
  type        = number
}

variable "control_plane_egress_protocol" {
  description = "Egress protocol for the EKS Control Plane security group."
  type        = string
}

variable "control_plane_egress_cidr_blocks" {
  description = "List of CIDR blocks for egress from the EKS Control Plane."
  type        = list(string)
}

variable "worker_nodes_ingress_from_port" {
  description = "Ingress from port for the EKS Worker Nodes security group."
  type        = number
}

variable "worker_nodes_ingress_to_port" {
  description = "Ingress to port for the EKS Worker Nodes security group."
  type        = number
}

variable "worker_nodes_ingress_protocol" {
  description = "Ingress protocol for the EKS Worker Nodes security group."
  type        = string
}

variable "worker_nodes_ingress_cidr_blocks" {
  description = "List of CIDR blocks for ingress to the EKS Worker Nodes."
  type        = list(string)
}

variable "worker_nodes_egress_from_port" {
  description = "Egress from port for the EKS Worker Nodes security group."
  type        = number
}

variable "worker_nodes_egress_to_port" {
  description = "Egress to port for the EKS Worker Nodes security group."
  type        = number
}

variable "worker_nodes_egress_protocol" {
  description = "Egress protocol for the EKS Worker Nodes security group."
  type        = string
}

variable "worker_nodes_egress_cidr_blocks" {
  description = "List of CIDR blocks for egress from the EKS Worker Nodes."
  type        = list(string)
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}



variable "node_desired_size" {
  description = "The desired number of EC2 instances in the node group"
  type        = number
}

variable "node_max_size" {
  description = "The maximum number of EC2 instances in the node group"
  type        = number
}

variable "node_min_size" {
  description = "The minimum number of EC2 instances in the node group"
  type        = number
}

variable "instance_types" {
  description = "The instance types for the EKS node group"
  type        = list(string)
}
