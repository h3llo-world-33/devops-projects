provider "aws" {
  region = "us-west-2"
}

module "efs_module" {
  source = "../modules/efs"
  vpc_id     = "vpc-0dd5030c7319f3b8c"
  subnet_ids = ["subnet-0e21b32261276eb5c", "subnet-0f745b45356f7f113", "subnet-0deed58b2f81bebae"]
}
