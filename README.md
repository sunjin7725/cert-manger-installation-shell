# cert-mananger installation shell
- This shell script can install cert-manager for kubernetes
- [More details here!](https://cert-manager.io/docs/)

## Requirements
- kubernetes(k3s, minikube, or etc,. are also compatible)
- helm
- You can install `K3S` [here](https://github.com/sunjin7725/k3s-installation-shell)!
- You can install `Helm` [here](https://github.com/sunjin7725/helm-installation-shell)!

## Installation
```bash
./cert-manager.sh ${VERSION}
```
**Note**  
1) Please check cert-manager release available version 
[cert-manager release](https://github.com/cert-manager/cert-manager/tags)  
2) Cert-manager installation has to set version parameter