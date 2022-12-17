#!/bin/bash
declare -a APP_NAMES=( "cert-manager" "consul" "contour" "contour-operator" "discourse" "elasticsearch" "etcd" "external-dns" "fluentd" "kafka" "keycloak" "mariadb" "mariadb-galera" "memcached" "minio" "mongodb" "mongodb-sharded" "mysql" "nginx" "node" "postgresql" "postgresql-ha" "rabbitmq" "rabbitmq-cluster-operator" "redis" "redis-cluster" "sealed-secrets" "solr" "thanos" "tomcat" "wordpress" "zookeeper" "apache" )
declare -a ARCHS=( "arm64" "amd64" )
declare -a USE_IMAGE_TYPES=( "bitnami" "bitnami-compat" )

#     | App    | Tests   | bitnami (amd64) | bitnami-compat (amd64) | bitnami-compat (arm64) | official (amd64) | official (arm64) | official link |
for HELM_APP_NAME in ${APP_NAMES[@]}; do
                if [ -f ./charts/.vib/${HELM_APP_NAME}/goss/goss.yaml ]
                then

echo "    | ${HELM_APP_NAME}  | Goss    |  $(cat result.json | jq -r ".\"bitnami-amd64-${HELM_APP_NAME}-goss\"") | $(cat result.json | jq -r ".\"bitnami-compat-amd64-${HELM_APP_NAME}-goss\"") | $(cat result.json | jq -r ".\"bitnami-compat-arm64-${HELM_APP_NAME}-goss\"")     |                  |                  |               |"
                fi
                if [ -f ./charts/.vib/${HELM_APP_NAME}/cypress/cypress.json ]
                then
echo "    | ${HELM_APP_NAME}  | Cypress |  $(cat result.json | jq -r ".\"bitnami-amd64-${HELM_APP_NAME}-cypress\"") | $(cat result.json | jq -r ".\"bitnami-compat-amd64-${HELM_APP_NAME}-cypress\"") | $(cat result.json | jq -r ".\"bitnami-compat-arm64-${HELM_APP_NAME}-cypress\"")     |                  |                  |               |"
                fi
done
