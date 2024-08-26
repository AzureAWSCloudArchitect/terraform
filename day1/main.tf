resource "aws_instance" "dev" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    tags={
        Name = "test"
    }  
}

output "publicip" {
    value = aws_instance.dev.public_ip
    description = "printing the public ip"
  
  
}
output "privateip" {
    value = aws_instance.dev.private_ip
    sensitive = true
  
}