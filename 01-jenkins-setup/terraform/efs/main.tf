provider "aws" {
  region = "us-west-2"
}

module "efs_module" {
  source = "../modules/efs"
  vpc_id     = "vpc-0493a3637ed6bb75d"
  subnet_ids = ["subnet-06163c3a7580b52a7", "subnet-0edab1f6a39382024", "subnet-012dc7bc82c645058"]
}
