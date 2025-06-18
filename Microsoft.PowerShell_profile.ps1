$TITLE = "$(
    if (
        (
            [Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()
        ).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
    ) {'Administrator: '}
)$($env:USERNAME)@$($env:USERDOMAIN)"
$host.ui.rawui.windowtitle="$TITLE"

# Use available handshake protcols
[Net.ServicePointManager]::SecurityProtocol = 
[enum]::GetNames([Net.SecurityProtocolType]) | Foreach-Object {
    [Net.SecurityProtocolType]::$_
}

$env:TPMODULEPATH = '~\Documents\WindowsPowerShell\Modules'
$env:TPPOSHPATH = '~\Documents\WindowsPowerShell\'
$env:DOWNLOADS = '~\Downloads\'

# Import 10ff functions
Get-ChildItem "$($env:TPPOSHPATH)\Functions\*.ps1" | %{
  . ($_.FullName)
}

# BEGIN: Define secrets
# $oApiPath = '~\Documents\WindowsPowerShell\Credentials\apikey@beta.openapi.com.xml'
# $env:OpenAIKey = (Import-CliXml $oApiPath).GetNetworkCredential().Password

# BEGIN: Define default param values for myself

# SolarWinds defaults
# $PSDefaultParameterValues.'Connect-Swis:Hostname' = "server01"


# VMWare PowerCLI Defaults
# $PSDefaultParameterValues.'Connect-ViServer:Server' = @(
#     "server01.domain.net"
# )
# $PSDefaultParameterValues.'Connect-ViServer:Force' = $true

# Pester output should always be details, my pref
$PSDefaultParameterValues.'Invoke-Pester:Output' = "Detailed"

# Misc
$PSDefaultParameterValues.'Get-Help:ShowWindow' = $true

# END: Define default param values for myself



# Custom type-ahead settings
if ($host.Name -eq 'ConsoleHost') {
    Import-Module PSReadLine
    # Set-PSReadLineOption -PredictionSource History
}


ipmo posh-git
$global:GitPromptSettings.BeforePath.Text = "`n"
$global:GitPromptSettings.BeforeStatus.Text = "`n["
$global:GitPromptSettings.DefaultPromptBeforeSuffix.Text = "`n"
 
# # Chocolatey profile
# $ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
# if (Test-Path($ChocolateyProfile)) {
#   Import-Module "$ChocolateyProfile"
# }

# Misc Aliases
New-Alias -Name grep -Value "Select-String" -Force
# New-Alias -Name inkscape -Value "C:\Program Files\Inkscape\bin\inkscape.exe" -Force

# Start Transcript
. (Join-Path $PSScriptRoot 'transcript.src.ps1')

# This is a silly thing, for fun
Write-Host "`n"
#Write-Host "$(Get-SillyRequest)" -b black -f Magenta
Write-Host "$(Get-Quote)" -b black -f DarkGreen
Write-Host "$(Get-Excuse)" -b black -f Cyan
Write-Host "`n"
Write-Host "`n"
