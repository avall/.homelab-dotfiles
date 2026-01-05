connection "homelab_0" {
  plugin = "aws"
  regions = ["eu-central-1"] # All regions
  default_region = "eu-central-1"
  profile = "aws-profile"
}

connection "homelab_1" {
  plugin = "aws"
  regions = ["eu-central-1"] # All regions
  default_region = "eu-central-1"
  profile = "homelab-profile"
}

connection "platform_aws" {
  plugin      = "aws"
  type        = "aggregator"
  connections = ["homelab_0","homelab_1"]
}

