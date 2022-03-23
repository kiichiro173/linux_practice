resource "aws_vpc" "inamivpc" {
    cidr_block = "193.168.1.0/24"
    tags = {
        Name = "demo-vpc"
    }
}

resource "aws_subnet" "demo-1a" {
    vpc_id = aws_vpc.inamivpc.id
    cidr_block = "193.168.1.0/25"

    availability_zone = "us-east-1a"
    tags = {
        Name = "inami-subnet"
        }
}