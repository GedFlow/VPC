provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_vpc" "terra-vpc" {
  cidr_block       = "200.200.0.0/16"
  instance_tenancy = "default"
  enable_dns_hostnames = "true"

  tags = {
    Name = "terra-vpc"
  }
}

resource "aws_subnet" "terra-subnet-1" {
  vpc_id     = aws_vpc.terra-vpc.id
  cidr_block = "200.200.10.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "terra-subnet-1"
  }
}

resource "aws_subnet" "terra-subnet-2" {
  vpc_id     = aws_vpc.terra-vpc.id
  cidr_block = "200.200.20.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "terra-subnet-2"
  }
}

resource "aws_subnet" "terra-subnet-3" {
  vpc_id     = aws_vpc.terra-vpc.id
  cidr_block = "200.200.30.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "terra-subnet-3"
  }
}

