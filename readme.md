# Ansible for WSL setup
Run when setup new WSL machine
1) `sudo chmod +x -R ./cli/`
2) `./cli/bootstrap.sh`
3) `ansible-playbook wsl-dev-environment-setup-playbook --ask-become-pass`