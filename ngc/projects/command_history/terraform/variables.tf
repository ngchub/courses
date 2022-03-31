# Add three variables to each file: region, zone, and project_id. 
# For their default values, use us-central1, us-central1-a, and your Google Cloud Project ID.
variable "project_id" {
  description = "The project ID to host the network in"
  default     = "FILL IN YOUR PROJECT ID HERE"
}


variable "network_name" {
  description = "The name of the VPC network being created"
  default     = "example-vpc"
 }


terraform {
  backend "local" {
    path = "terraform/state/terraform.tfstate"
  }
}