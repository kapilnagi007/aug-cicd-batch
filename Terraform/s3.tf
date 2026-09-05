resource "aws_s3_bucket" "cstm_bucket" {
  bucket = "my-tf-test-bucket-aug-cicd-batch"

  tags = {
    Name        = "aug-cicd-batch"
    Environment = "Dev"
  }
}




Terraform Init  => Intialise resources/ initialise modules

Terraform fmt => Terraform Format

Terrafrom Validate => Terraform check the syntax used is valid or not

Terraform Plan => Blueprint of the terraform resources 

Terraform apply => final command apply all the resources in the cloud