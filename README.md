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
-e  (e.g. ```-e "SERVER_URL=myawesome.hostname.url.com"```)
 * SERVER_URL - Target hostname. Required.
 * FAB_ARGS - If your command requires any argument before fab, specify them here.
 * USER - The user you want to run the command(s) as. Defaults to root.
 * PASSWORD - Password for root or your specified user. Required.
 * COMMANDS - The automation-tools commands you want to run.

Example
-------
```docker run -e "FAB_ARGS=RHN_USERNAME='user@redhat.com' RHN_PASSWORD='password123' RHN_POOLID='p1o2o3l4i5d6h7a8s9h0' -e "SERVER_URL=myawesome.hostname.url.com" -e "PASSWORD=rootpass" -e "COMMANDS=product_install:satellite6-upstream" -it jacobcallahan/auto-tools-docker:latest```

Spins up the automation-tools Docker image, pulls updates and then runs:

```RHN_USERNAME='user@redhat.com' RHN_PASSWORD='password123' RHN_POOLID='p1o2o3l4i5d6h7a8s9h0' fab -H myawesome.hostname.url.com -u root -p 'rootpass' product_install:satellite6-upstream```
