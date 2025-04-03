variable "subscription_id" {
    type = string
    description = "The Azure subscription ID"
}

variable "location"{
    type = string
    description = "The Azure region"
    default = "Central US"
}

variable "project" {
    type = string
    description = "The name of the project"
    default = "ecommerce" 
}

variable "environment" {
    type = string
    description = "The environment for the resources"
    default = "dev"
}

variable "tags"{
    type = map(string)
    description = "Tags to be applied to the resources"
    default = {
        environment = "development"
        date = "apr-2025"
        created_by = "Terraform"
    }
}