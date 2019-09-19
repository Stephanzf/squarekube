#
# VPC Resources
#  * VPC
#  * Subnets
#  * Internet Gateway
#  * Route Table
#

resource "aws_vpc" "ec" {
  cidr_block = "10.0.0.0/16"

  tags = "${
    map(
      "Name", "terraform-eks-ec-node",
      "kubernetes.io/cluster/${var.cluster-name}", "shared",
    )
  }"
}

resource "aws_subnet" "ec" {
  count = 2

  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
  cidr_block        = "10.0.${count.index}.0/24"
  vpc_id            = "${aws_vpc.ec.id}"

  tags = "${
    map(
      "Name", "terraform-eks-ec-node",
      "kubernetes.io/cluster/${var.cluster-name}", "shared",
    )
  }"
}

resource "aws_internet_gateway" "ec" {
  vpc_id = "${aws_vpc.ec.id}"

  tags = {
    Name = "terraform-eks-ec"
  }
}

resource "aws_route_table" "ec" {
  vpc_id = "${aws_vpc.ec.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.ec.id}"
  }
}

resource "aws_route_table_association" "ec" {
  count = 2

  subnet_id      = "${aws_subnet.ec.*.id[count.index]}"
  route_table_id = "${aws_route_table.ec.id}"
}
