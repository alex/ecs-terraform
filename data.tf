data "aws_ami" "awslinux" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name = "architecture"
    values = ["x86_64"]
  }
  filter {
    name = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }
}

output "ami_ids" {
  value = ["${data.aws_ami.awslinux.id}"]
}

