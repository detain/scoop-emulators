if(!$env:SCOOP_HOME) { $env:SCOOP_HOME = Resolve-Path (scoop prefix scoop) }
$describe = "$env:SCOOP_HOME/bin/describe.ps1"
$dir = "$PSScriptRoot/../bucket" # checks the parent dir
Invoke-Expression -command "& '$describe' -dir '$dir' $($args | ForEach-Object { "$_ " })"
