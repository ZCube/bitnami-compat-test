#!/bin/bash
declare -a APP_NAMES=( "cert-manager" "consul" "contour" "contour-operator" "discourse" "elasticsearch" "etcd" "external-dns" "fluentd" "kafka" "keycloak" "mariadb" "mariadb-galera" "memcached" "minio" "mongodb" "mongodb-sharded" "mysql" "nginx" "node" "postgresql" "postgresql-ha" "rabbitmq" "rabbitmq-cluster-operator" "redis" "redis-cluster" "sealed-secrets" "solr" "thanos" "tomcat" "wordpress" "zookeeper" "apache" )
declare -a ARCHS=( "arm64" "amd64" )
declare -a USE_IMAGE_TYPES=( "bitnami" "bitnami-compat" )

for HELM_APP_NAME in ${APP_NAMES[@]}; do
      for USE_IMAGE_TYPE in ${USE_IMAGE_TYPES[@]}; do
            for ARCH in ${ARCHS[@]}; do
                [[ "${ARCH}" == "arm64" && "${USE_IMAGE_TYPE}" == "bitnami" ]] && continue
                if [ -f ./charts/.vib/${HELM_APP_NAME}/goss/goss.yaml ]
                then
                    echo       ${USE_IMAGE_TYPE}-${ARCH}-${HELM_APP_NAME}-goss: \$\{\{ steps.goss.outputs.${USE_IMAGE_TYPE}-${ARCH}-${HELM_APP_NAME}-goss \}\}
                fi
                if [ -f ./charts/.vib/${HELM_APP_NAME}/cypress/cypress.json ]
                then
                    echo       ${USE_IMAGE_TYPE}-${ARCH}-${HELM_APP_NAME}-cypress: \$\{\{ steps.cypress.outputs.${USE_IMAGE_TYPE}-${ARCH}-${HELM_APP_NAME}-cypress \}\}
                fi
            done
      done
done
