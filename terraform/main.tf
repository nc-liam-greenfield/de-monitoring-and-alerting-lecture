terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "nc-de-lg-monitoring-lecture-example"
    key = "de-monitor-alert/terraform.tfstate"
    region = "eu-west-2"
  }
}

provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
      ProjectName = "S3 Mistaker Demo"
      Team = "Data Engineering"
      DeployedFrom = "Terraform"
      Repository = "de-monitor-alert-demo"
      CostCentre = "DE"
      Environment = "dev"
      RetentionDate = "2024-05-31"
    }
  }
}