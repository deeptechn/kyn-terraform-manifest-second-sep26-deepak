terraform {
  backend "s3" {
    bucket = "terraform-state-dpk" #change it to your bucket name
    key    = "devdata/dpk.tfstate" #change my name to your name
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}