#Requires -Version 5.1
#Requires -Modules @{ ModuleName = 'BuildHelpers'; ModuleVersion = '2.0.1' }
#Requires -Modules @{ ModuleName = 'Pester'; ModuleVersion = '5.2.0' }

# SCOOP_HOME is set by the CI workflow to point to the Scoop core checkout
# which contains the validator DLL and test scripts

# Run the standard Scoop bucket tests - this only validates manifests
# against the schema, not style checks on every JSON file
& "$env:SCOOP_HOME\test\Import-Bucket-Tests.ps1" -BucketPath $PSScriptRoot
