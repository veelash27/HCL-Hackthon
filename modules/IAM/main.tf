# Create the IAM Role
resource "aws_iam_role" "admin_role" {
  name               = var.role_name
  assume_role_policy = var.assume_role_policy

  tags = {
    Environment = var.environment
  }
}

# Attach the AdministratorAccess Policy
resource "aws_iam_role_policy_attachment" "admin_policy_attachment" {
  role       = aws_iam_role.admin_role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
