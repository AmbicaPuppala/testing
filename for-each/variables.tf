variable "instances"{
    type = map
    default = {
        mysql = "t3.micro"
        backend = "t3.small"
        frontend = "t3.micro"
    }
}


variable "zone_id" {
    default = "Z0903495IBCX9H53880M"
}    

variable "domain_name" {
    default = "salearnings.tech"
}