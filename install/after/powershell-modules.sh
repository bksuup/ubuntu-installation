#!/usr/bin/env pwsh

Write-Output "Installing Azure Modules for PowerShell"
Install-Module -Name Az -Repository PSGallery -Force

Write-Output "Updating PowerShell Help database"
Update-Help
