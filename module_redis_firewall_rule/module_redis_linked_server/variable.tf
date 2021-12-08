 variable "tags"{
    default={
                vm_tags_ApplicationID="APP0000339"
                vm_tags_GBL="195500855370"
                vm_tags_Market="CORP"
                vm_tags_method="AzureDevOpsPipeline"
                vm_tags_Owner="amarjit.singh@us.mcd.com"
                vm_tags_PatchingGroup="NA"  
    }
} 
# primary resource group and cache details

  variable "rg_primary_name"{ 
    default="musharaf-rg-primary"
     type = string
     description="(Required) The name of the resource group in which to create the Redis instance."
 }
 
variable "rg_primary_location"{
     type = string
     default = "East US"
     description="(Required) The location of the resource group"
 }

 variable "redis_cache_primary_name"{ 
      type = string
      default="musharaf-primary-cache1"
     description="(Required) The name of the resource group in which to create the Redis instance."
 } 
# Secondary resource and cache details
 variable "rg_secondary_name"{ 
     type = string
      default     = "musharaf-rg-secondary"
     description="(Required) The name of the resource group in which to create the Redis instance."
 }
 
variable "rg_secondary_location"{
     type = string
      default = "West US"
     description="(Required) The location of the resource group"
 }

 variable "redis_cache_secondary_name"{ 
      type = string
       default="musharaf-secondary-cache2"
     description="(Required) The name of the resource group in which to create the Redis instance."
 } 
  
  # The role of the linked Redis cache
 variable "server_role"{ 
      type = string
      default="Secondary"
     description="(Required) The role of the linked Redis cache "
 }
  
 variable "capacity"{ 
      type = number
       default=1
     description=" (Required) The size of the Redis cache to deploy. Valid values for a SKU family of C (Basic/Standard) are 0, 1, 2, 3, 4, 5, 6, and for P (Premium) family are 1, 2, 3, 4"
 } 
  variable "family"{ 
      type = string
       default="P"
     description="(Required) The SKU family/pricing group to use. Valid values are C (for Basic/Standard SKU family) and P (for Premium)"
 } 
 variable "sku_name"{ 
      type = string
       default="Premium"
     description="(Required) The SKU of Redis to use. Possible values are Basic, Standard and Premium."
 } 

variable "enable_non_ssl_port"{ 
      type = bool
       default=false
     description="(Optional) Enable the non-SSL port (6379) - disabled by default"
 }

 variable "minimum_tls_version"{ 
      type = string
       default="1.2"
     description="(Optional) The minimum TLS version. Defaults to 1.0."
 }
#configuration
  /* variable "maxclients"{ 
      type = number
       default=256
    
 }
*/
 variable "maxmemory_reserved"{ 
      type = number
       default=2
    
 }

 variable "maxmemory_delta"{ 
      type = number
       default=2
    
 }

 variable "maxmemory_policy"{ 
      type = string
       default="allkeys-lru"
    
 } 




 
  

  

 
 