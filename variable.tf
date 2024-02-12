variable "bucket_list"{
    type = list(string)
    default = [ "count123","count2","count3" ]
}

variable "bucket_list2"{
    type = list(string)
    default = [ "foreach1","foreach2","foreach3" ]
}
