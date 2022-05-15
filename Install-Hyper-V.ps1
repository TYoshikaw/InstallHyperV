####################################################################################################
#
# PowerShell Script of
#
# Install Hyper-V Hypervisor and Hyper-V Management Tools
#
# Created on 2022.5.15
#
# Reference : https://www.altaro.com/hyper-v/install-hyper-v-powershell-module/
#
####################################################################################################

Get-WindowsFeature -Name *hyper-v* ##check status of Hyper-V Module

# Install-WindowsFeature -Name Hyper-V -Restart  ##install only Hyper-V Hypervisor
# Uninstall-WindowsFeature -Name Hyper-V -Restart  ##uninstall only Hyper-V Hypervisor

# Install-WindowsFeature -Name RSAT-Hyper-V-Tools ##install Hyper-V manager and PowerShell Module 
# Uninstall-WindowsFeature -Name RSAT-Hyper-V-Tools ##uninstall Hyper-V manager and PowerShell Module

Install-WindowsFeature -Name Hyper-V -IncludeManagementTools -Restart ##innstall Hyper-V Hypervisor and all tools (method #1)
# Uninstall-WindowsFeature -Name Hyper-V -IncludeManagementTools -Restart ##uninstall Hyper-V Hypervisor and all tools (method #1)

# Install-WindowsFeature -Name Hyper-V, RSAT-Hyper-V-Tools -Restart ##install Hyper-V Hypervisor and all tools (method #2)
# Uninstall-WindowsFeature -Name Hyper-V, RSAT-Hyper-V-Tools -Restart ##uninstall Hyper-V Hypervisor and all tools (method #2)
# Restart-Computer -Force
