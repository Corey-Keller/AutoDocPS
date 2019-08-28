param ($Task = 'Default')

# Grab nuget bits, install modules, set build variables, start build.
Get-PackageProvider -Name NuGet -ForceBootstrap | Out-Null

#region Ensure PSDepend is installed
$PSDependLoadAttempts = 0
$loadedPSDepend = $false
do {
  try {
    Import-Module -Name PSDepend -RequiredVersion "0.3.1" -Force
    if (Get-Command Invoke-PSDepend){
          $loadedPSDepend = $true
      }
  }
  catch {
    Install-Module PSDepend -Repository PSGallery -RequiredVersion "0.3.1" -Scope CurrentUser -force
    $PSDependLoadAttempts++
    write-warning "Could not load PSDepend on attempt $PSDependLoadAttempts"
    if ($PSDependLoadAttempts -ge 10) {
      Write-Verbose 'ERROR' "Could not load PSDepend after $PSDependLoadAttempts attempts. EXITING!"
      exit 15
    }
  }
} while (-not $loadedPSDepend)
#endregion Ensure PSDepend is installed

$BuildDependencies = Get-Dependency -Path .\build.depend.psd1 | Test-Dependency

$BuildDependencies.ForEach{
  $CurrentDependency = $_
  if ( -not $CurrentDependency.DependencyExists) {
    Write-Verbose "$($CurrentDependency.DependencyName) not installed. Installing now!"
    Install-Dependency -Dependency $CurrentDependency -Confirm:$false
  }
  Write-Verbose "Importing $($CurrentDependency.DependencyName)"
  Import-Dependency -Dependency $CurrentDependency
}

Set-BuildEnvironment

Invoke-psake -buildFile .\psake.ps1 -taskList $Task -nologo
exit ([int](-not $psake.build_success))