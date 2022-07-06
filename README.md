# rodeos-docker-compose

A collection of docker-compose.yaml and override files to run 

* irods
* rodeos-ingest

with options to include

* metalnx
  * traefik for SSL
* sssd (for PAM auth)

# config

```
cp env.example env
```

and then edit env to your liking.
