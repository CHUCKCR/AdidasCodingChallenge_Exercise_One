
#creation of instance, the ami id, region and instance type is specified in vars.tf

resource "aws_instance" "ADIDAS" {
  ami           = lookup(var.ami_id, var.region)
  instance_type = instance_type = "t2.micro"

# Public Subnet assign to instance
  subnet_id     = aws_subnet.public_1.id


# Security group assign to instance
  vpc_security_group_ids=[aws_security_group.allow_ssh.id]
