provider "aws" {
    region = "us-east-1"
    profile = "school"
}

variable "myfirststring" {
    type = string
    default = "this is my first string"
}

output "myfirstoutput" {
    value = "${var.myfirststring}"
}

variable "mymultilinestring" {
    type = string
    default = <<EOH
    this 
    is
    multi line
    string 
    EOH
}

output "mymultilinestringout" {
  value = "${var.mymultilinestring}"
}

// here is map sample

variable "mapexample" {
    type = map
    default = {
        "useast" = "ami1"
        "euwest" = "ami2"
    }
}

output "mymapoutput" {
    value = "${var.mapexample["euwest"]}"
}

// here is a list sample

variable "mysecuritygrouplist" {
   type = list
   default = ["sg1", "sg2", "sg3" ]
}

output "mysgoutput" {
  value = "${var.mysecuritygrouplist[0]}"
}
