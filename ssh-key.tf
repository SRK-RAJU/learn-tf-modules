resource "tls_private_key" "dev_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name = var.NAME
  public_key = trimspace(tls_private_key.dev_key.public_key_openssh)
}

resource "null_resource" "key-wave" {

  provisioner "local-exec" {
    command = <<-EOT
      sudo echo '${tls_private_key.dev_key.private_key_pem}' > ./'${var.generated-key}'.pem
      sudo chmod 400 ./'${var.generated-key}'.pem
    EOT
  }
}
