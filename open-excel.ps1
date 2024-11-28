#Install-Module -Name ImportExcel -Force

function userNuOn {
    param (
        [string]$cedula
    )

$Path = ".\user-test1.xlsx"
$readFile = Import-Excel -Path $Path #| Out-GridView

foreach ($line in $readFile){
        if ($line.cedula -eq $cedula){
            Write-Host $line.usuario"|"$line.cedula"|"$line.nube"|"$line.onpremise 
            foreach ($user_nube in (-split $line.nube)){
                Write-Host "User-nube:"$user_nube
            }
            foreach ($user_onprem in (-split $line.onpremise)){
                Write-Host "User-onprem:"$user_onprem
            }
            Write-Host "................................................."
    }
}
}

userNuOn -cedula '23456782'

