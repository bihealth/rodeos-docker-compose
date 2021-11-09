#!/bin/bash

mkdir -p volumes/{postgres/data,redis/data,traefik/letsencrypt,irods/log,irods/vault}

mkdir -p config/irods/etc

chmod 777 volumes/irods/vault
