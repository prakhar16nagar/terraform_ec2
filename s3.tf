terraform {

  backend "s3" {

    bucket = "terraformbucket16"

    key    = "path/key"

    region = "us-east-2"

  }

}
