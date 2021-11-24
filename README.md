Repo para automação terraform 

**Projeto feito com vpc e subnets defaults**

Necessário a key estar na home do usuario para o ansible utilizare dar a permissão 400 

para sobreescrever variavel do ansible usando WSL2
```
export ANSIBLE_CONFIG=$PWD/ansible.cfg
```
Arquivo backend
Colocar a key dentro de um arquivo e passar no shared_credentials, ou colocar no path padrão "**~/.aws/credentials**" 

**credentials file**
```
[default]  
aws_access_key_id=*****************  
aws_secret_access_key=*****************  
```

```
shared_credentials_file = "<PATH>"

ansible hosts example
server1 ansible_host=1.1.1.3 ansible_ssh_private_key_file=~/key.pem ansible_user=ubuntu ansible_become=yes
