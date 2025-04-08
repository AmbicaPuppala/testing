variable "instances"{
    default = ["mysql", "backend", "frontend"]
}

variable "zone_id" {
    default = "Z0903495IBCX9H53880M"
}    

variable "domain_name" {
    default = "salearnings.tech"
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
    }
} 