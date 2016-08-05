Application description
=======================
Hyper-V integration services, are a bundled set of software which, when installed in the virtual machine improves integration between the host server and the virtual machine. Integration services come pre-installed in most supported guest operating systems.

Features
--------
* Install/Upgrade Chocolatey (uninstallation/downgrade not possible right now)
* EXE/MSI Packages are included in nuget file
* Requires source path to MyGet
* Supports ONLY 64-bit version


#### 2016-08-04 Build 6.3.9600.18398
* version change due to KB3172614

#### 2016-08-04 Build 6.3.9600.17831
* initial build

# Usage
## Direct
```
choco install hvintegrationservices -source https://www.myget.org/F/eleader/ 
```
or with added source
```
choco source add -n=eLeader -s"https://www.myget.org/F/eleader/api/v2" --priority=10
choco install hvintegrationservices
```
## YAML
```yaml
hvintegrationservices:
  ensure: latest
  uninstall_options: "--force --all-versions"
  provider: chocolatey
  source: https://www.myget.org/F/eleader/
```  