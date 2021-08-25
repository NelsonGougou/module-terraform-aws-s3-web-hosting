resource "aws_s3_bucket" "s3_bucket" {
    bucket = var.bucket_name
    acl    = "public-read"
    policy = templatefile("${path.module}/policy.json",{bucket_name = var.bucket_name})

    website {
        index_document = "index.html"
        error_document = "error.html"
    }
    
    provisioner "local-exec" {
    command = "aws s3 cp ${path.module}/website/ s3://${var.bucket_name}"
  }
}
