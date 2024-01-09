resource "aws_instance" "web" {
  
  ami           = "ami-03265a0778a880afb"
  instance_type = lookup(var.instance_type , terraform.workspace)
  tags = {
  Name = "hello terraform"
  }
}