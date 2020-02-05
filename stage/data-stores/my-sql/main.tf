provider "aws" {
    region = "ap-south-1"
}

terraform {
    backend "s3" {
        bucket         = "tf-state-lock"
        region         = "ap-south-1"
        key            = "stage/data-stores/my-sql/terraform.tfstate"

        dynamodb_table = "tf-state-lock"
        encrypt        = true
    }
}

resource "aws_db_instance" "default" {
    identifier_prefix = "tf-webserver"
    engine = "mysql"
    allocated_storage = 10
    instance_class = "db.t2.micro"
    
    name = "testdatabase"
    username = "admin"
    password = var.db_password
}