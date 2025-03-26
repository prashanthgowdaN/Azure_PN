environment = {
  name   = "dev"
  type   = "development"
  region = {
    primary   = "eastus"
    secondary = "westus"
  }
}

resource_group = {
  name = "Prashanth"
  id   = null
}

storage_accounts = {
  stazuredevops01 = {
    name             = "stazuredevops01"
    tier             = "Standard"
    replication_type = "LRS"
    enable_failover  = false
    enable_backup    = true
    containers = [
      { name = "backup" },
      { name = "logs" }
    ]
  },
  stazuredevops02 = { 
    name             = "stazuredevops02"
    tier             = "Premium"
    replication_type = "ZRS"
    enable_failover  = true
    enable_backup    = false
    containers = [
      { name = "backup" },
      { name = "archived" }
    ]
  }
}

tags = {
  environment    = "dev"               
  App_owner      = "Prashanth"           
  managed_by     = "Terraform"                     
  cost_center    = "CC-12345"  
  business_unit  = "Finance"           
  project        = "E-Commerce-Portal" 
  backup_policy  = "enabled"           
  retention      = "30-days"           
  auto_shutdown  = "enabled"          
  provisioned_by = "Terraform"        
  expiry_date    = "N/A"       
  patching_group = "Group-A"        
  sla            = "99.9%"          
  support_team   = "DevOps"    
}
