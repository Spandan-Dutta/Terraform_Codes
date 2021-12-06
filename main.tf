provider "aws" {
  region = "ap-south-1"
  access_key = "your_access_key"
  secret_key = "your_secret-key"
}
# How to create a EC2 Instance.

resource "aws_instance" "first-server" {
    ami = "ami-0567e0d2b4b2169ae"
    instance_type = "t2.micro"

    tags = {
        Name = "terraform"
    }
}

# How to create a VPC


resource "aws_vpc" "first_vpc"{
  cidr_block        = "10.0.0.0/16"
  tags = {
    Name = "production-vpc"   
  }
}
resource "aws_subnet" "subnet-1" {
  vpc_id     =  aws_vpc.first_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "production-subnet"
  }
}



                              
