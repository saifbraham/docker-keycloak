docker-build:
	docker build . -t keycloak-custom-them

docker-run:
	docker run \
		-p 8080:8080 \
		--name keycloak \
		-it keycloak:version2

docker-delete:
	docker rm keycloak-tester-container

docker-update:
	docker commit keycloak keycloak:version2
	docker save -o "D:\JAVA PROJECT\keyclock\test\keycloak.version2.tar" keycloak:version2

docker-load:
	docker load < keycloak.version2.tar

docker-in:
	docker exec -it keycloak bash

docker-copy:
	docker cp "D:\JAVA PROJECT\keyclock\test\themes\custom" keycloak:/opt/jboss/keycloak/themes/custom