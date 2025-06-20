# terraforms

1. Download the terraform software in below link .Download the windows386 for windows10 laptop. 
```
https://developer.hashicorp.com/terraform/install
```

2. paste the path in where terrafrom.exe is availabe in environmental variables.

3.Install aws cli to interact vs code with aws account.Below link
```
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
```
After Downloading the awscli file extract it.

4 create user in IAM
users--->specify user details{enter the username}--->set permmisions(attach administrator policy to the user)--->review and create(create user). Now the user is created.

5. Now generate the aws acess key and secret key.

6.now give acess key and secret key by using below command
```
aws configure
```


presedence for terraform variables.

1.cmd line
2. tfvars files
3.environmental variables
4.default values
5. user prompt