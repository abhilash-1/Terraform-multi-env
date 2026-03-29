output IP{
    value = aws_instance.Roboshop[*].private_ip
}

output instance_id{
    value = aws_instance.Roboshop[*].id
}

output sg_ids{
    value = aws_security_group.roboshop_sg[*].id
}