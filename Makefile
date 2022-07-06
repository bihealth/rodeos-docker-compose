.PHONY: print
print:
	docker-compose --env-file env \
	-f docker-compose.yaml \
	-f docker-compose.override.yaml.ceph \
	-f docker-compose.override.yaml.sssd \
	-f docker-compose.override.yaml.metalnx \
	config

.PHONY: up
up:
	docker-compose --env-file env \
	-f docker-compose.yaml \
	-f docker-compose.override.yaml.ceph \
	-f docker-compose.override.yaml.sssd \
	up -d

.PHONY: down
down:
	docker-compose --env-file env \
	down \
	--remove-orphans

.PHONY: metalnx
metalnx:
	docker-compose --env-file env \
	-f docker-compose.yaml \
	-f docker-compose.override.yaml.ceph \
	-f docker-compose.override.yaml.sssd \
	-f docker-compose.override.yaml.metalnx \
	up -d

.PHONY: web_restart
web_restart:
	docker-compose --env-file env \
	-f docker-compose.yaml \
	-f docker-compose.override.yaml.ceph \
	-f docker-compose.override.yaml.sssd \
	-f docker-compose.override.yaml.metalnx \
	up -d metalnx traefik

.PHONY: logs
logs:
	docker-compose \
	-f docker-compose.yaml \
	-f docker-compose.override.yaml.ceph \
	-f docker-compose.override.yaml.sssd \
	-f docker-compose.override.yaml.metalnx \
	logs
