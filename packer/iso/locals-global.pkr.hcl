locals {
  iso_file = replace(var.iso_full_file_path, "{iso_file}", var.iso_file)

  path_user_data  = "${path.cwd}/iso/autoinstall"
  path_temp_files = "${local.path_user_data}/tmp"

  path_random_password = "${local.path_temp_files}/.random-password"

  path_ansible_scripts = "${path.cwd}/../ansible"
}
