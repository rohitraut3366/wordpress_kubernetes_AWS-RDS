provider "aws" {
  region = "ap-south-1"
  profile = "rohit"
}

resource "aws_db_instance" "new"{
    engine = "mysql"
    engine_version = "5.7.30"
    name = "mydb"
    username = "root"
    password = "9a17e51792"
    instance_class = "db.t2.micro"
    allocated_storage = 10
    storage_type = "gp2"
    port = 3306
    auto_minor_version_upgrade = true
    publicly_accessible = true
    parameter_group_name = "default.mysql5.7"
    skip_final_snapshot= true
}
output "db"{
  value = aws_db_instance.new.name
}
output "username"{
  value = aws_db_instance.new.username
}
output "password"{
  value = aws_db_instance.new.password
}

output "RDS" {
  value = aws_db_instance.new.endpoint
}