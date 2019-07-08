My Environment
==============

## Requirements

[![Fedora Logo](https://github.com/diegorubin/environment/blob/master/doc/fedora_logo.png)](https://getfedora.org/)

[![Ansbible Logo](https://raw.githubusercontent.com/diegorubin/environment/master/doc/ansible_logo.png)](https://www.ansible.com/)

This project uses ansible to make configurations.

## Execution

```
sudo ansible-pull -e user=<user> -e destination=<local dir> -U https://github.com/diegorubin/environment.git
```

