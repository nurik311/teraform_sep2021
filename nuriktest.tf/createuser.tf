resource "aws_iam_user" "n" {
  name = "Nunya"


 
}

resource "aws_iam_access_key" "nunyakey" {
  user = aws_iam_user.n.name
}

resource "aws_iam_user_policy" "adminpolicy" {
  name = "adpolicy"
  user = aws_iam_user.n.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_user" "a" {
  name = "azat"


 
}

resource "aws_iam_access_key" "azat" {
  user = aws_iam_user.a.name
}

resource "aws_iam_user_policy" "ec2access" {
  name = "ec2access"
  user = aws_iam_user.a.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}