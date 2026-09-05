terraform {
	backend "s3"{
		bucket = "bucket_name"
		key = "${terraform.workspace}/terraform.tfstate"
		region ="us-east-1"
		encrypt = true
		use_lockfile = true
	}
}
