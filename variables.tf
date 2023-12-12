variable "description" {
  default = null
}

variable "rest_api_id" {}

variable "triggers" {
  type    = map(string)
  default = null
}

variable "stages" {
  type = map(object({
    description = optional(string)
    variables   = optional(map(string))
  }))
  default = {}
}