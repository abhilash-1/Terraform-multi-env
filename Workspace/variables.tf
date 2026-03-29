variable instances {
    type = list 
    default = ["MongoDb", "Mysql", "Redis", "frontend"]

}

variable common_tags{
    type = map 
    default = {
        Project="Roboshop"
        #Environment="dev"
        Type="Shopping_web"
    }
}

variable instance_type {
    type=map
    default ={
    dev = "t3.micro"
    uat = "t3.small"
    prod = "t3.medium"
    }
  
}

variable environment{
    type=string
    default="dev"
}