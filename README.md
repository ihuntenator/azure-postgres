# Azure PostgreSQL Single Server

## plan apply destroy

```
terraform plan -var-file="secret.tfvars"
```

```
terraform apply -var-file="secret.tfvars"
```

```
terraform destroy
```

## azurerm issues

### private link

Basic server does not support the "private link" feature.

Having the following set as false:
```
public_network_access_enabled     = false
```
causes failure with this error:
```
Error: Code="FeatureSwitchNotEnabled"
```

### read replica

Create a read replica with terraform:


Create a read replica witgh the CLI :
```
az postgres server replica create --name mydemoserver-replica --source-server mydemoserver --resource-group myresourcegroup --location westus
```

List replicas:
```
az postgres server replica list --server-name mydemoserver --resource-group myresourcegroup
```
