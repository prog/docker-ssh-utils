Docker image with SSH utilities
===============================

- ssh-client
- scp
- rsync


Configuration 
-------------

Use following environment variables to set contents of files in the `~/.ssh/` directory:

- `SSH__CONFIG` ⟶  `.ssh/config`
- `SSH__ID_RSA`  ⟶ `.ssh/id_rsa`
- `SSH__ID_RSA_PUB`  ⟶ `.ssh/id_rsa.pub`
- `SSH__KNOWN_HOSTS` ⟶ `.ssh/known_hosts`


Usage
-----

```bash
docker run [-it] \
	[-e "SSH__ID_RSA=<the contents of id_rsa file>"] \
	[-e "SSH__KNOWN_HOSTS=..."] \
	prog/ssh-utils <command>
```
