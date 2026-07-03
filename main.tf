# 1. تحديد المزود (AWS) والمنطقة
provider "aws" {
  region = "us-east-1"
}

# 2. إنشاء مفتاح KMS رئيسي جديد أوتوماتيكياً للتشفير
resource "aws_kms_key" "secure_project_key" {
  description             = "KMS Key for our secure cloud project created via Terraform"
  deletion_window_in_days = 7


  tags = {
    Name        = "SecureProjectKey"
    Environment = "Production"
  }
}

# 3. إنشاء اسم مستعار (Alias) للمفتاح عشان نصل ليهو بسهولة
resource "aws_kms_alias" "secure_key_alias" {
  name          = "alias/SecureProjectKeyviaTerraform"
  target_key_id = aws_kms_key.secure_project_key.key_id
}
