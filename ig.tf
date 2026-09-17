#create a file called as ig.tf copy line 2 till 8
  resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.web_vpc.id

  tags = {
    Name = "${local.name_prefix}-igw"
  }
}