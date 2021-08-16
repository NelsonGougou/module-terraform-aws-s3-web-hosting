output "website_endpoint" {
    description = "Domain name of the bucket"
    value       = module.s3_bucket.website_endpoint
}

output "name" {
    description = "Name (id) of the bucket"
    value       = module.s3_bucket.name
}