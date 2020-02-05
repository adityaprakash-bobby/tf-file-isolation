provider "aws" {
    region = "ap-south-1"
}

resource "aws_db_instance" "webserver" {
    identifier_prefix = "tf-webserver"
    engine = "mysql"
    allocated_storage = 10
    instance_class = "db.t2.micro"
    
    name = "test-database"
    username = "admin"
    password = var.db_password
}
