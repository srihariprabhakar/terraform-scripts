📦 Azure Terraform Modules – Demo Projects
This repository contains a collection of minimal Terraform scripts showcasing common Azure infrastructure patterns. Each file demonstrates a specific use case and can be deployed independently.

🔧 Included Modules:

acr-private-endpoint.tf:	Deploys a private Azure Container Registry (ACR) with Private Endpoint and disables public access.
appservice-custom-domain.tf:	Sets up an App Service with a basic plan and binds a custom domain (DNS config assumed).
keyvault-rbac.tf:	Deploys an Azure Key Vault and assigns RBAC access to the current user.
loganalytics.tf:	Creates a Log Analytics Workspace for centralized monitoring.
static-site-storage.tf:	Provisions a Storage Account with static website hosting enabled.

📁 Supporting Files

provider.tf – Azure provider configuration.

resource_group.tf – Shared resource group setup.

client_config.tf – Retrieves current user's object ID (for RBAC scenarios).


*** Notes ***

All resources are created in the same resource group and region.

