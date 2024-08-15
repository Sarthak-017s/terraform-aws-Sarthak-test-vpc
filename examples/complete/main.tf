module "vpc" {
  source = "./module/vpc"

  vpc_connfig = {
    cidr_block = "10.0.0.0/16"
    Name = "my-test-vpc"
  }

  subnet_config = {
    public_subnet = {
        cidr_block = "10.0.0.0/24"
        az = "us-east-1b"
        public = true
    }

    private_subnet = {
        cidr_block = "10.0.1.0/24"
        az = "us-east-1a"
    }
  }
}
