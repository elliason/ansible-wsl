# Ansible for WSL setup
Run when setup new WSL machine
1) Run `sudo chmod +x -R ./cli/`
2) Run `./cli/bootstrap.sh`
3) Configure vars - set newest NVM version (https://github.com/nvm-sh/nvm)
4) Install Homebrew for linux (https://docs.brew.sh/Homebrew-on-Linux) and add its executable to PATH
5) Run `ansible-playbook wsl-dev-environment-setup-playbook --ask-become-pass`