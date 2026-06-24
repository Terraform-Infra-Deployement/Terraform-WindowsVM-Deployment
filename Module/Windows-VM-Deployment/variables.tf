variable "vmrgname" {
  type = string
}

variable "vmname" {
  type = string
}

variable "vmlocation" {
  type = string
}


variable "vmsize" {
  type = string
}

variable "os_disk_type" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "enterprise_tags" {
  type = map(string)
}