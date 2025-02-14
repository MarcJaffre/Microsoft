#### Docker-Desktop
```
"C:\Program Files\Docker\Docker\resources\com.docker.diagnose.exe" check
```

```
[FAIL] DD0001: is the application running? prereq failed: does the host support virtualization?
[FAIL] DD0002: does the bootloader have virtualization enabled? contacting Windows service: getting bootloader configuration: Get "http://ipc/hyperv/bootloader": open \\.\pipe\dockerBackendV2: Le fichier spécifié est introuvab
[FAIL] DD0003: is the Docker CLI working? prereq failed: is the Docker engine running?
[FAIL] DD0004: is the Docker engine running? prereq failed: is the LinuxKit VM running?
[FAIL] DD0005: is the user in the docker-users group? prereq failed: is the LinuxKit VM running?
[FAIL] DD0007: is the backend responding? prereq failed: are the backend processes running?
[FAIL] DD0006: is the Docker Desktop Service responding? failed to ping com.docker.service with error: Get "http://ipc/ping": open \\.\pipe\dockerBackendV2: Le fichier spécifié est introuvable.
[FAIL] DD0010: is the Docker API proxy responding? prereq failed: are the backend processes running?
[FAIL] DD0014: are the backend processes running? prereq failed: is the LinuxKit VM running?
[FAIL] DD0013: is the $PATH ok? unable to find docker executable on PATH
[FAIL] DD0016: is the LinuxKit VM running? prereq failed: is the application running?
[PASS] DD0015: are the binary symlinks installed?
[FAIL] DD0017: can a VM be started? prereq failed: does the host support virtualization?
[FAIL] DD0018: does the host support virtualization? prereq failed: does the bootloader have virtualization enabled?
[SKIP] DD0028: is there available VM disk space?
[FAIL] DD0020: is the Hyper-V Windows Feature enabled? querying windows features: Post "http://ipc/windowsfeatures/check": open \\.\pipe\dockerBackendV2: Le fichier spécifié est introuvable.
[FAIL] DD0030: is the image access management authorized? prereq failed: is the Docker engine running?
[FAIL] DD0031: does the Docker API work? prereq failed: is the Docker engine running?
[FAIL] DD0037: is the connection to Docker working? prereq failed: is the Docker engine running?
```
