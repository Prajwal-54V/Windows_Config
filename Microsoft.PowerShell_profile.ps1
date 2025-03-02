#alias
set-alias tt tree
set-alias ee explorer
set-alias ll ls 

#promt
#oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config 'C:\Users\prajwal\Documents\Powershell\CustomShellTheme.omp.json' | Invoke-Expression
#oh-my-posh init pwsh  --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/jandedobbeleer.omp.json' | Invoke-Expression

#functions

function whereis($command){
	Get-Command -Name $command -ErrorAction SilentlyContinue |
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

#icons
Import-Module Terminal-Icons

#PSReadLine
Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key Tab -Function Complete
#Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
