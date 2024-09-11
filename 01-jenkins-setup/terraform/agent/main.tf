provider "aws" {
  region = "us-west-2"
}

module "ec2_instance" {
  source = "../modules/ec2"

  instance_name      = "jenkins-agent"
  ami_id             = "ami-05134c8ef96964280"
  instance_type      = "t2.small"
  key_name           = "techiescamp"
  subnet_ids         = ["subnet-0e21b32261276eb5c", "subnet-0f745b45356f7f113", "subnet-0deed58b2f81bebae"]
  instance_count     = 1
}
