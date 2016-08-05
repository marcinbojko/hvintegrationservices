
$ErrorActionPreference = 'Stop';

$packageName        = 'hvintegrationservices'
$scriptPath         = $PSScriptRoot
$fileFullPath       = Join-Path $scriptPath '\is\setup.exe'
$killexec           = 0
$killexecprocess    = ""


#error validExitCodes

# 60004 - correct version of HV Integration Services exists
# 60001 - install only in Hyper-V machines

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "/quiet /norestart"
  validExitCodes= @(0,60004,60001)
  file          = $fileFullPath
}

# Should we kill some exec ?
if ($killexec) {
  Stop-Process -processname $killexecprocess -force
  } 

  Install-ChocolateyInstallPackage @packageArgs

















