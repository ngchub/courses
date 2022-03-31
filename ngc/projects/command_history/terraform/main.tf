# Add the Terraform block and the Google Provider to the main.tf file. 
# Verify the zone argument is added along with the project and region arguments in the 
# Google Provider block.


provider "google" {
  project     = "# REPLACE WITH YOUR PROJECT ID"
  region      = "us-central-1"
}
resource "google_storage_bucket" "test-bucket-for-state" {
  name        = "# REPLACE WITH YOUR PROJECT ID"
  location    = "US"
  uniform_bucket_level_access = true
}