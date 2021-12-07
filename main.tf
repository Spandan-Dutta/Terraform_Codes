                                # Scenario
# Create a VPC
# Create an IG
# Create custom route table
# Create a subnet
# Associate subnet with the route table
# Create SG to allow port 22,80,443 
# Create a Network interface with a IP in the subnet that was created in Step 4
# Assign a elastic IP through the network interface in Step 7
# Create Ubuntu server and install and also enable apache2 in to.



# Mentioned the provider name and access key and secret key
provider "aws" {
    region = "ap-south-1"
    access_key = "your_access_key"
    secret_key = "your_secret_key"
}

# Create a VPC
resource "aws_vpc" "prod-vpc"{
  cidr_block        = "10.0.0.0/16"
  tags = {
    Name = "production"   
  }
}

# Create a Internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.prod-vpc.id

 
}


# Create a custom route table
resource "aws_route_table" "prod-route-table" {
  vpc_id = aws_vpc.prod-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  route {
    ipv6_cidr_block        = "::/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "prod"
  }
}


# Create a Subnet
resource "aws_subnet" "subnet-1" {
  vpc_id     =  aws_vpc.prod-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "prod-subnet"
  }
}

# Assosiate Subnet with route table 

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet-1.id
  route_table_id = aws_route_table.prod-route-table.id
}

# Security group
resource "aws_security_group" "allow-web" {
  name        = "allow_web_traffic"
  description = "Allow Web inbound traffic"
  vpc_id      = aws_vpc.prod-vpc.id

  ingress {
    description      = "https"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    description      = "http"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    description      = "ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"       # -1 here means any protocol
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "allow_web"
  }
}

# Create a network interface
resource "aws_network_interface" "web-server-nic" {
  subnet_id       = aws_subnet.subnet-1.id
  private_ips     = ["10.0.1.50"]
  security_groups = [aws_security_group.allow-web.id]

}

# Create Elastic IP (requires Internet GW first to be assigned)
resource "aws_eip" "one" {
  vpc                       = true
  network_interface         = aws_network_interface.web-server-nic.id
  associate_with_private_ip = "10.0.1.50"
  depends_on = [aws_internet_gateway.gw]
}

# How to create a EC2 Instance.

resource "aws_instance" "web-server-instance" {
    ami = "ami-0567e0d2b4b2169ae"
    instance_type = "t2.micro"
    availability_zone = "ap-south-1a"
    key_name = "main-key"
    network_interface {
    network_interface_id = aws_network_interface.web-server-nic.id
    device_index         = 0
  }
    user_data = <<-EOF
                #!/bin/bash
                sudo apt update -y
                sudo apt install apache2 -y
                sudo systemctl start apache2
                sudo bash -c 'echo My First Web Server > /var/www/html/index.html'
                EOF 
    
    tags = {
        Name = "webserver"
    }
}
