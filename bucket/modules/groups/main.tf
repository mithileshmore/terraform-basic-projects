data "aws_iam_policy_document" "test_bucket_terraform_two_write" {
  statement {
    actions = [
      "s3:GetBucketLocation",
      "s3:GetBucketVersioning",
      "s3:GetLifecycleConfiguration",
      "s3:GetObject",
      "s3:GetObjectAcl",
      "s3:GetObjectTorrent",
      "s3:GetObjectVersion",
      "s3:GetObjectVersionAcl",
      "s3:GetObjectVersionTorrent",
      "s3:GetReplicationConfiguration",
      "s3:ListBucket",
      "s3:ListBucketMultipartUploads",
      "s3:ListBucketVersions",
      "s3:ListMultipartUploadParts",
      "s3:PutObject"
    ]
    resources = [
      "${var.test_bucket_terraform_two_arn}",
      "${var.test_bucket_terraform_two_arn}/*"
    ]
  }
}

resource "aws_iam_policy" "test_bucket_terraform_two_write_policy" {
  name        = "test-bucket-terraform-two-write-policy"
  description = "A policy that gives write access to test_bucket_terraform_two bucket."
  policy      = "${data.aws_iam_policy_document.test_bucket_terraform_two_write.json}"
}
