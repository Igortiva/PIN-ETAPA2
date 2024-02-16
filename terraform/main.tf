provider "aws" {
  region = "us-east-1"  # Cambia esto según tu región preferida
}

resource "aws_instance" "ec2_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # AMI de Amazon Linux 2
  instance_type = "t2.micro"
  key_name      = "tu_nombre_de_clave_iam"  # Cambia esto por el nombre de tu clave IAM

  tags = {
    Name = "MiInstanciaEC2"
  }
}
