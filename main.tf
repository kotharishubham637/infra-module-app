#dev-env
module "dev-infra" {
  source            = "./infra-module-app/infra-app"
  env               = "dev"
  bucket_name       = "infra-app-bucket"
  instance_count    = 1
  aws_instance_type = "t2.micro"
  aws_ami           = "ami-06468be052a4195a6"
  hash_key          = "studentID"
  aws_region        = "eu-west-1"
}

#prod-env
module "prod-infra" {
  source            = "./infra-module-app/infra-app"
  env               = "prod"
  bucket_name       = "infra-app-bucket"
  instance_count    = 2
  aws_instance_type = "t2.medium"
  aws_ami           = "ami-06468be052a4195a6"
  hash_key          = "studentID"
  aws_region        = "eu-west-1"
}

#stg-env
module "stg-infra" {
  source            = "./infra-module-app/infra-app"
  env               = "stg"
  bucket_name       = "infra-app-bucket"
  instance_count    = 1
  aws_instance_type = "t2.small"
  aws_ami           = "ami-06468be052a4195a6"
  hash_key          = "studentID"
  aws_region        = "eu-west-1"
}