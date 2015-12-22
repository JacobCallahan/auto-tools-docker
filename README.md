# auto-tools-docker
Automation-tools in a Container

Installation
------------
```docker pull jacobcallahan/auto-tools-docker```

Usage
-----
```docker run <arguments> -it jacobcallahan/auto-tools-docker:latest```

Accepted Arguments
------------------
-e  (e.g. ```-e "COMMAND_STRING=myawesome.hostname.url.com"```)
 * COMMAND_STRING - Target hostname. Required.

Example
-------
```docker run -e "COMMAND_STRING=fab -i /root/.ssh/id_hudson_dsa -H root@myserver.hostname.com distro_info" -v ~/.ssh/id_hudson_dsa:/root/.ssh/id_hudson_dsa -it jacobcallahan/auto-tools-docker:latest```

Spins up the automation-tools Docker image, mounts an ssh key, pulls updates and then runs:

```fab -i /root/.ssh/id_hudson_dsa -H root@myserver.hostname.com distro_info```
