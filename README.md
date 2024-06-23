# aks-project3
```
1. Install Azure CLI
2. login to Azure with command:
     az login
3. Get Subsciption ID:
    az account list --output table

4. To get the credentials run the command:

   az ad sp create-for-rbac
You will get the output:"The output includes credentials that you must protect. Be sure that you do not include these credentials in your code or check the credentials into your source control."
 Use it to create the
.connection.env
 terraform.tfvars files.

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
