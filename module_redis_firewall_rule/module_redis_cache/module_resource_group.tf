module "resource_group" {
  source = "../azure_resoure_group"
    resource_group_name = "${var.resource_group_name}"
    resource_group_location = "${var.resource_group_location}"                
    Tags = "${var.tags}"
        
}

