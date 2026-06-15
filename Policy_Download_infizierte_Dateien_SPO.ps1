################################################################################
#
# Microsoft 365 Tenant Domain Audit Script
# Purpose: Audit der im Teant konfigurierten Richtlinie für den Download infizierter Dateien aus SharePoint Online.
# Author: Andre Thiemann
# Date: February 2026
# Compatibility: PowerShell 7
# Required Role: Global Reader or equivalent read-only access
#
################################################################################

// Runterlader der SharePoint Online Management Shell: https://www.microsoft.com/en-us/download/details.aspx?id=35588&msockid=3c116136c565688e1d4c7796c40e692b

// Abrufen der Informationen zu der Möglichkeit des Herunterladens infizierter Dateien
Get-SPOTenant | fl DisallowInfectedFileDownload

// Aktivieren der Richtlinie zur Verhinderung des Downloads infizierter Dateien
// Set-SPOTenant -DisallowInfectedFileDownload $true
// Abschließend prüfen, ob die Einstellungen vorgenommen sind
Get-SPOTenant | fl DisallowInfectedFileDownload
