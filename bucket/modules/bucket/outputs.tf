output "test_bucket_terraform_two_arn" {
  description = "ARN of the created files bucket"
  value       = "${aws_s3_bucket.test_bucket_terraform_two.arn}"
}
