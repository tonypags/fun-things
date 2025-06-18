cd "~\Documents\WindowsPowerShell\Modules"

$ghtp = @(
    'PsDateTools'
    'PsWinAdmin'
    'PsDevTools'
    'PsGuiTools'
)
$ghtp | %{
    if (gi $_ -ea 0) {} else {
        Write-Host "Cloning $_" -f green -b black
        git clone "https://github.com/tonypags/$($_).git"
    }
}

# $vsts = @(
#     'zzzzzzzzzzzzzzzz'
# )
# $vsts | %{
#     if (gi $_ -ea 0) {} else {
#         Write-Host "Cloning $_" -f green -b black
#         git clone "https://xxxxxxxxxxx@dev.azure.com/xxxxxxxxxxxx/xxxxxxxxxxxxxx/_git/$($_)"
#     }
# }

