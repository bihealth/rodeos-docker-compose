.PHONY: print
print:
	docker-compose --env-file env \
	-f docker-compose.yaml \
	-f docker-compose.override.yaml.ceph \
	-f docker-compose.override.yaml.sssd \
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
	--remove-orphans \
	down
