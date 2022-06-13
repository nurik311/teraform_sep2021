resource "aws_iam_group" "developers" {
  name = "developers"
  
}

resource "aws_iam_user_group_membership" "devgroup" {
  user = aws_iam_user.n.name


  groups = [
    aws_iam_group.developers.name,
  ]
}

resource "aws_iam_user_group_membership" "devgroup1" {
  user = aws_iam_user.a.name


  groups = [
    aws_iam_group.developers.name,
  ]
}


resource "aws_iam_group_policy" "my_developer_policy" {
  name  = "my_developer_policy"
  group = aws_iam_group.developers.name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:GetObject",
      "s3:ListBucket",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}