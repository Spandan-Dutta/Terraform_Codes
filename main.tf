provider "aws" {
  region = "ap-south-1"
  access_key = "AKIA4HQHXAADTD6XKE73"
  secret_key = "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"
}
# How to create a EC2 Instance.

# resource "aws_instance" "first-server" {
#     ami = "ami-0567e0d2b4b2169ae"
#     instance_type = "t2.micro"

#     tags = {
#         Name = "terraform"
#     }
# }

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



                              #  NOTES
# resource "<provider>_<resource_type>" "name(specific to terraform)" {
#     config options....
#     key = "value"
# }

# terraform init --> This will check all the providers inside the code and for eg
# it found AWS so it will download all the necessary plugins which will help 
# Terraform to communicate with the provider.

# terraform plan --> optional command --> It just does a dry run of the code.

# terraform apply --> same as terraform plan. It will execute the whole code.

# terraform folder gets created on the left side whenever we do terraform init.
# It installs all the necessary plugins required for the terraform to execute.
# As in the code above we only used AWS as the provider so inside the terraform
# folder all the AWS related plugins terraform will download.

# terraform tfstate --> It stores the state of the terraform. Like we launch any instance
# Terraform must store state about your managed infrastructure and configuration.
# This state is used by Terraform to map real world resources to your configuration,
# keep track of metadata, and to improve performance for large infrastructures.
# Terraform uses this local state to create plans and make changes to your
# infrastructure.