# By default variable presedence will be in below order.

1.cmd line
2.terrafrom.tfvars file
3.environmental variables
4.default values

How to give varaible value in cmd line in below syntax

```
terrafrom apply -var "variable name = value" -auto-approve
```

How to export the environmental variables in terraform

```
export TF_VAR_variablename="value"
```

example:- export TF_VAR_instance_type="t2.micro"