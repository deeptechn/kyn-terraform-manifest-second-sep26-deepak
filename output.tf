 output "vpc_id" {
  description = "id of the vpc"
  value = aws_vpc.web_vpc.id
}

output "internet_gateway_id" {
  description = "internet gateway id"
  value = aws_internet_gateway.igw.id
}

output "private_route_table" {
  description = "private route table"
  value = aws_route_table.custom_rtb.id
}
#we want to output the subnet
output "private_subnet" {
  description = "ids of all private subnet"
  value = {
    for name, subnet in aws_subnet.db_subnet :
    name => {
        id = subnet.id 
        cidr_block = subnet.cidr_block
        availability_zone = subnet.availability_zone
    }
  }
}

output "private_subnet4" {
  description = "ids of all private subnet"
  value = aws_subnet.db_subnet["subnet4"].id
}
