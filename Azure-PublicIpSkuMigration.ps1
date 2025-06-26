Install-Module -Name AzureVMPublicIPUpgrade -Scope CurrentUser -Repository PSGallery -Force

Connect-AzAccount -Tenant '70139da3-8f87-4982-b9e5-ba19a744b736' -Subscription 'a1f9187f-b32e-4b93-a633-a8fead7bdb42'

Start-VMPublicIPUpgrade -VMName 'xtdev01-vm' -ResourceGroupName 'xtdev-rg' -WhatIf
Start-VMPublicIPUpgrade -VMName 'xtdev02-vm' -ResourceGroupName 'xtdev-rg' -WhatIf

Start-VMPublicIPUpgrade -VMName 'xtdev01-vm' -ResourceGroupName 'xtdev-rg'
Start-VMPublicIPUpgrade -VMName 'xtdev02-vm' -ResourceGroupName 'xtdev-rg'
# testing123456