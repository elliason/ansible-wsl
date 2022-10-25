# Ansible for WSL setup
Run when setup new WSL machine
1) Run `sudo chmod +x -R ./cli/`
2) Run `sudo ./cli/bootstrap.sh`
3) Configure vars - set newest NVM version (https://github.com/nvm-sh/nvm)
4) Install Homebrew for linux (https://docs.brew.sh/Homebrew-on-Linux) and add its executable to PATH
5) Run `ansible-playbook wsl-dev-environment-setup-playbook.yml --ask-become-pass`

## systemd support
To enable systemd, open your wsl.conf file in a text editor using sudo for admin permissions and add these lines to the /etc/wsl.conf:
Bash

```json
[boot]
systemd=true
```

You will then need to close your WSL distribution using wsl.exe --shutdown from PowerShell to restart your WSL instances. Once your distribution restarts, systemd should be running. You can confirm using the command: systemctl list-unit-files --type=service, which will show the status of your services.