

# It will intailize the required plugins to according to provider.
```
terraform init
```
# it will plan
```
terraform plan
```
# it will apply
```
terraform apply -auto-approve
```
# it will destroy
```
terraform destroy -auto-approve
```
# this cmd will arrange the script in proper order

```
terraform fmt
```

# to pass variables in command line we will use below format syntax

```
terrafrom apply -var "variable name = value" -auto-approve
```

# To change the backend configuration we will use below cmd
```
terraform init -reconfigure -backend-config=PATH
```

# Terraform workspace cmd

```
terraform workspace
```

# To create new workspace
```
terraform workspace new workspacename
```
ex:- terraform workspace new dev

# To know how many workspaces are available list
```
terraform workspace list
```
# To switch from 1 workspace to Another workspace we use below cmd

```
terraform workspace select workspace name
```

ex:- terraform workspace select dev