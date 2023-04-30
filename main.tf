resource "aws_instance" "example" {
  ami           = "ami-02396cdd13e9a1257"  # Cambia a la AMI que prefieras
  instance_type = "t2.micro"  # Cambia al tipo de instancia que prefieras
  tags = {
  Name = "tf-lino-ec2"
  }
}

output "public_ip" {
  value = aws_instance.example.public_ip
}