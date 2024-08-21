# VPC Configuration
vpc_cidr = "10.0.0.0/16"
vpc_name = "my-vpc"

# Subnet CIDR Blocks
public_cidr = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

private_cidr = [
  "10.0.3.0/24",
  "10.0.4.0/24"
]

azs = [
  "us-east-1a",
  "us-east-1b"]

# Internet Gateway
gw = "my-internet-gateway"

# Route Table CIDR Blocks
cidr_block_rt = "0.0.0.0/0"
public_rt = "public-route-table"

# Elastic IP and NAT Gateway
name_eip = "my-nat-eip"
name_nat = "my-nat-gateway"

# Private Route Table
cidr_block_private = "0.0.0.0/0"

# EKS Control Plane Security Group
control_plane_ingress_from_port = 443
control_plane_ingress_to_port   = 443
control_plane_ingress_protocol  = "tcp"
control_plane_ingress_cidr_blocks = [
  "0.0.0.0/0"
]

control_plane_egress_from_port = 0
control_plane_egress_to_port   = 0
control_plane_egress_protocol  = "-1"  # Allows all outbound traffic
control_plane_egress_cidr_blocks = [
  "0.0.0.0/0"
]

# EKS Worker Nodes Security Group
worker_nodes_ingress_from_port = 0
worker_nodes_ingress_to_port   = 65535
worker_nodes_ingress_protocol  = "tcp"
worker_nodes_ingress_cidr_blocks = [
  "0.0.0.0/0"
]

worker_nodes_egress_from_port = 0
worker_nodes_egress_to_port   = 0
worker_nodes_egress_protocol  = "-1"  # Allows all outbound traffic
worker_nodes_egress_cidr_blocks = [
  "0.0.0.0/0"
]

cluster_name       = "my-eks-cluster"

node_desired_size  = 1
node_max_size      = 2
node_min_size      = 1
instance_types     = ["t3.medium"]
