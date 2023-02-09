provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA5CDRBOZILT3ERRMF"
  secret_key = "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"
}
resource "aws_instance" "S1" {
  ami           = "ami-095413544ce52437d"
  instance_type = "t2.micro"

  tags = {
    Name = "Server1"
  }
}
