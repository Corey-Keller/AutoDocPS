@{
    PSDependOptions = @{
        AddToPath = $true
        Target = 'CurrentUser'
    }
    'Pester' = @{
        Version = '4.8.1'
        Parameters = @{
            SkipPublisherCheck = $true
        }
    }
    'psake' = '4.8.0'
    'PSDeploy' = '1.0.2'
    'BuildHelpers' = '2.0.10'
    'platyPS' = '0.14.0'
    'ChangelogManagement' = '2.1.3'
    'PSScriptAnalyzer' = '1.18.1'
}
