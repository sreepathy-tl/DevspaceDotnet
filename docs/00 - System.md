I am running ubuntu 20.04 LTS OS on AMD64 CPU

I have
- Rancher desktop installed
- Devspace installed
- VS Code with minimal plugins
- Konsole terminal
- Lens to monitor Kubernetes
- Created a namespace "dotnet" using the command:
    `kubectl create namespace dotnet`
- A local registry setup. It is a one time requirement. 
    Create it using the command:
    `devspace run setup-registry`