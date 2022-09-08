data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "test-terraform-state-backend-yg"
    key    = "vpc/terraform.tfstate"
    region = "ap-northeast-2"
  }
}
data "terraform_remote_state" "sg" {
  backend = "s3"
  config = {
    bucket = "test-terraform-state-backend-yg"
    key    = "sg/terraform.tfstate"
    region = "ap-northeast-2"
  }
}
data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*"]
  }
}