terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.11.0"
    }
  }
}

provider "aws" {
  # Configuration options
  resource "aws_ami" "example" {
  name                = "terraform-example"
  virtualization_type = "hvm"
  root_device_name    = "/dev/xvda"

  ebs_block_device {
    device_name = "/dev/3vda"
    snapshot_id = "snap-1234"
    volume_size = 8
  }
}
}
resource "aws_ec2_host" "test" {
  instance_type     = "t2.micro"
  availability_zone = "us-west-2a"
  host_recovery     = "on"
  auto_placement    = "on"
}

