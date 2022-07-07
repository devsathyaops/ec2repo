variable "server_job" {
   description = "This is the spot variable"
   validation {
      condition = (length(var.server_job)) <=10
      error_message = "The tag name mustn't exceed 10 characters"
   }
}
