provider "aws" {
    region = "ap-southeast-1"
}


resource "aws_instance" "test-ec2" {
  ami           = "ami-10bb2373" // if you change the region, make sure the change the new ami as well
  instance_type = "t2.micro"
  tags = {
    Name = "testing-ec2-server"
  }
}