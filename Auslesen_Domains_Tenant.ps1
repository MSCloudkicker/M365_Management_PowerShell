################################################################################
#
# Microsoft 365 Tenant Domain Audit Script
# Purpose: Audit der im Teant hinterlegten Domains, um einen Überblick über die konfigurierten Domains zu erhalten.
# Author: Andre Thiemann
# Date: February 2026
# Compatibility: PowerShell 7
# Required Role: Global Reader or equivalent read-only access
#
################################################################################

# Installieren des PS Moduls für MS Graph
Install-Module Microsoft.Graph -Scope CurrentUser

# Admin Berechtigung für das Auslesen der Domains im Tenant
Connect-MgGraph -Scopes "Domain.Read.All"

# Alles Domains mit ersten wichtigen Informationen auslesen und ausgeben
Get-MgDomain

# Nur bestimmte Domain anzeigen lassen
# Get-MgDomain -DomainId "example.com"

# Nur bestimmte Angaben der Domains im Tenant anzeigen lassen
# Get-MgDomain -Property Id,IsVerified,IsDefault

# Alle verifizierten Domains im Tenant anzeigen lassen
# Get-MgDomain -All | Where-Object { $_.isVerified -eq $true } | Select-Object Id, IsVerified, AuthenticationType

# Exportieren der Daten in eine CSV-Datei
# -NoTypeInformation entfernt den #Type Information Header aus der Ausgabe. Dieser Parameter ist aus Gründen der Abwärtskompatibilität enthalten.
# Get-MgDomain | Export-Csv -Path "C:\Temp\Domains.csv" -NoTypeInformation
