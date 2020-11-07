provider "aws" {
  region = "eu-west-2"
}
  
resource "aws_instance" "test_VM" {
  # CentOS Linux 6 x86_64 HVM EBS 1703_011
  ami           = "ami-09e33dae3dfb2947a" 
  instance_type = "t2.small"
  availability_zone = "eu-west-2a"

  tags {
    Name = "at-template_for_demo_prep"
  }
}
