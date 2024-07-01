variable "pm_api_url" {
  default = "https://192.168.100.4:8006/api2/json"
}

variable "pm_user" {
  default = "infra_as_code@pve"
}

variable "pm_password" {
  default = ""
}

variable "pm_node" {
  default = "proxmox-node1"
}

variable "pm_pool" {
  default = ""
}

variable "pm_full_clone" {
  default = false
}

# change this value with the id of your templates (win10 can be ignored if not used)
variable "vm_template_id" {
  type = map(number)

  # set the ids according to your templates
  default = {
      "WinServer2019_x64"  = 101
      "WinServer2016_x64"  = 103
      "Windows10_22h2_x64" = 0
  }
}

variable "storage" {
  # change this with the name of the storage you use
  default = "EXT4"
}

variable "network_bridge" {
  default = "vmbr0"
}

variable "network_model" {
  default = "e1000"
}

variable "network_vlan" {
  default = 0
}

## the following variable is only for telmate provider (not used)
## change this value with the name of your templates (win10 can be ignored if not used)
# variable "vm_template_name" {$
#   type = map(string)
# 
#   default = {
#       "WinServer2019_x64"  = "WinServer2019x64-cloudinit-qcow2"
#       "WinServer2016_x64"  = "WinServer2016x64-cloudinit-qcow2"
#       "Windows10_22h2_x64" = "Windows10x64-22h2-cloudinit-qcow2"
#   }
# }
