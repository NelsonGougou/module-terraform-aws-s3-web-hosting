resource "aws_s3_bucket" "s3_bucket" {
    bucket = var.bucket_name
    acl    = "public-read"
    policy = templatefile("${path.module}/policy.json",{bucket_name = var.bucket_name})

    website {
        index_document = "index.html"
        error_document = "error.html"
    }

}
