source "file" "password" {
  # Create a unique and big string and save it to the file. 
  # e.g: 20b33efa-9302-4b1a-8a38-403d57c8291a
  content = uuidv4()
  target  = local.path_random_password
}

build {
  name = "credencials"

  sources = ["source.file.password"]

  provisioner "shell-local" {
    inline = [
      # Make sure the folder exists.
      "mkdir -p ${local.path_temp_files}",

      # Generate a random password and save it in the secret manager.
      "echo -n $(cat ${local.path_random_password}) | secret-tool store --label='${var.vm_name}' password '${var.vm_name}'"
    ]
  }
}
