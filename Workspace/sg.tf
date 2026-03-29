resource "aws_security_group" "roboshop_sg" {
  count = length(var.instances)  
  name        = "${var.instances[count.index]}_${var.environment}"
  description = "sg_id creating for roboshop"

  tags =merge (var.common_tags,{
    name = "${var.instances[count.index]}_sg"
  })

   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

   ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  
}

