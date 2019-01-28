./rancher-compose \
--project-name sa-users-app \
--url http://192.168.99.100:8080/v1/projects/1a5 \
--access-key 17A0058956D2044C7F61 \
--secret-key ZvzCQcqMnBTxrLTBQAtokWd3SocgMCi6oXNozm2E \
-f docker-compose.yml \
--verbose up \
-d --force-upgrade \
--confirm-upgrade
