
provider "aws" {
    region = "us-east-1"
   
}
resource "aws_instance" "terraform-demo"{
  ami = "ami-090fa75af13c156b4"
  instance_type = "t2.nano" 
  key_name = "revisionkey"  
  tags = {
    Name = "Jenkins"
    Env = "dev"
  }
}
output "public_ip" {
    value = aws_instance.terraform-demo.public_ip
}
output "public_dns" {
    value = aws_instance.terraform-demo.public_dns
} 