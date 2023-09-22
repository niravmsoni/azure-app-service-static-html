#Once we log into the Sandbox, create a directory and navigate to it
mkdir htmlapp
cd htmlapp

#Clone this git repo
git clone https://github.com/Azure-Samples/html-docs-hello-world.git


#Set variables to hold the resource group and app names by running the following commands.
resourceGroup=$(az group list --query "[].{id:name}" -o tsv)
appName=az204app$RANDOM

#Create the web app
cd html-docs-hello-world
az webapp up -g $resourceGroup -n $appName --html
