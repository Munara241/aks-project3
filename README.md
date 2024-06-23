# aks-project3
```
1. Install Azure CLI
2. login to Azure with command:
     az login
3. Get Subsciption ID:
    az account list --output table

4. To get the credentials run the command:

   az ad sp create-for-rbac
You will get the output to use create the
.connection.env and terraform.tfvars files.

     # create terraform.tfvars file

     aks_service_principal_app_id        = ""
     aks_service_principal_client_secret = "" 

     # create .connection.env file (hidden file) and add your credencials
     export ARM_CLIENT_ID=""
     export ARM_CLIENT_SECRET=""
     export ARM_SUBSCRIPTION_ID=""
     export ARM_TENANT_ID=""

and run the command source .connection.env to activate the .env file.
After all this steps you can run Terraform Configuration.

```
