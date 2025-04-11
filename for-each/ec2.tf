resource "aws_instance" "this" {
  for_each = var.instances # keyword for for_each is used each
    ami                    = "ami-09c813fb71547fc4f"
    instance_type         = each.value # here value is used to get the value of map
    vpc_security_group_ids = [aws_security_group.allow_tls.id]

    tags = {
        Name = each.key # here key is used to get the key of map
        Purpose = "Terraform practice"
    }    
}
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  tags = {
    Name = "allow_tls"
  }
}

output "ec-info" {
  value = aws_instance.this
}
  
