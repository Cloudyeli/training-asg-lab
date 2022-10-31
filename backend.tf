terraform {
  backend "s3" {
    bucket         = "ta-terraform-tfstates-041308375526"
    key            = "sprint1/week2/training-terraform/training-asg-lab/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}