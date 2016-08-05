
$ErrorActionPreference = 'Stop';

$packageName        = 'hvintegrationservices'
$scriptPath         = $PSScriptRoot
$fileFullPath       = Join-Path $scriptPath '\is\setup.exe'
$killexec           = 0
$killexecprocess    = ""
$validExitCodes     = @(0,60004)

#error validExitCodes

# 60004 - correct version of HV Integration Services exists
# 60001 - install only in Hyper-V machines

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "/quiet /norestart"
  validExitCodes= $validExitCodes
  file          = $fileFullPath
}

# Should we kill some exec ?
if ($killexec) {
  Stop-Process -processname $killexecprocess -force
  } 

 if ($validExitCodes -NotContains (Install-ChocolateyInstallPackage @packageArgs).ExitCode)
        { 
            Throw " 60004 - correct version of HV Integration Services exists,  60001 - install only in Hyper-V machines, 3010 - reboot required"
        }

  

















