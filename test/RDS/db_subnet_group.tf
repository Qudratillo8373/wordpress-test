resource "aws_db_subnet_group" "db_subnet" {
    name = "db_subnet"
    subnet_ids     = data.terraform_remote_state.main.outputs.private_subnet_ids
}