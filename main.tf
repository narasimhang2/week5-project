# Fetch the latest Amazon Linux 2023 AMI ID via SSM Parameter Store to bypass ec2:DescribeImages
data "aws_ssm_parameter" "amazon_linux_2023" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_instance" "web" {
  ami           = "ami-04ccd752e0917a978"
  instance_type = "t3.micro"

  tags = {
    Name = "week-five-shanthi-it"
  }
}
