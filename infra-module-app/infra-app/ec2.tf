# key-pair
resource "aws_key_pair" "my-key" {
  key_name   = "${var.env}-infra-key"
  public_key = file("${path.module}/../../keys/key.pub")

  tags = {
    Name = "${var.env}-infra-key"
  }
}
# vpc and security groups
resource aws_default_vpc default{

}

resource aws_security_group my_security_group{
    name        = "${var.env}-infra-app-sg"
    description = "this will add the TF generated security groups"
    vpc_id      = aws_default_vpc.default.id #interpolation

    tags = {
        Name = "${var.env}-infra-app-sg"
    }


# inbound-rules
    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

#outbound-rules
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
}
}

resource "aws_instance" "my-instance" {
  count           = var.instance_count
  instance_type   = var.aws_instance_type
  key_name        = aws_key_pair.my-key.key_name
  security_groups = [aws_security_group.my_security_group.name]
  ami             = var.aws_ami

  tags = {
    Name = "${var.env}-${var.bucket_name}-infra-instance"
  }

  root_block_device {
    volume_size = var.env == "prod" ? 15 : 10
    volume_type = "gp3"
  }
}
