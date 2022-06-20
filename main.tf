data "tfe_outputs" "workspace_a" {
  organization = "Mirakl-Sandbox"
  workspace    = "workspace-a"
}

resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo ${data.tfe_outputs.workspace_a.values.my_secret}"
  }
}

