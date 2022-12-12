# bitnami-compat-test

* This repository checks Docker images for compatibility with [Bitnami Chart](https://github.com/bitnami/charts).
* The test uses test code from the [Bitnami Chart](https://github.com/bitnami/charts) repository.

## Compatibility table

* legend

  * O : test pass
  * X : test pass fail
  * Empty : not tested

* note
  * cypress v9 does not support arm64 so not tested 

* result

    | App   | Tests   | bitnami (amd64) | bitnami-compat (amd64) | bitnami-compat (arm64) | official (amd64) | official (arm64) | official link |
    | :---- | :------ | :-------------: | :--------------------: | :--------------------: | :--------------: | :--------------: | :-----------: |
    | Minio | Goss    |        O        |           O            |           O            |                  |                  |               |
    | Minio | Cypress |        O        |           O            |                        |                  |                  |               |

## Todo

* [ ] airflow
* [ ] apache
* [ ] appsmith
* [ ] argo-cd
* [ ] argo-workflows
* [ ] aspnet-core
* [ ] cassandra
* [ ] cert-manager
* [ ] clickhouse
* [ ] common
* [ ] concourse
* [ ] consul
* [ ] contour
* [ ] contour-operator
* [ ] discourse
* [ ] dokuwiki
* [ ] drupal
* [ ] ejbca
* [ ] elasticsearch
* [ ] etcd
* [ ] external-dns
* [ ] fluentd
* [ ] ghost
* [ ] gitea
* [ ] grafana
* [ ] grafana-loki
* [ ] grafana-operator
* [ ] grafana-tempo
* [ ] haproxy
* [ ] haproxy-intel
* [ ] harbor
* [ ] influxdb
* [ ] jasperreports
* [ ] jenkins
* [ ] joomla
* [ ] jupyterhub
* [ ] kafka
* [ ] keycloak
* [ ] kiam
* [ ] kibana
* [ ] kong
* [ ] kube-prometheus
* [ ] kube-state-metrics
* [ ] kubeapps
* [ ] kubernetes-event-exporter
* [ ] logstash
* [ ] magento
* [ ] mariadb
* [ ] mariadb-galera
* [ ] matomo
* [ ] mediawiki
* [ ] memcached
* [ ] metallb
* [ ] metrics-server
* [x] minio
* [ ] mongodb
* [ ] mongodb-sharded
* [ ] moodle
* [ ] mxnet
* [ ] mysql
* [ ] nats
* [ ] nginx
* [ ] nginx-ingress-controller
* [ ] nginx-intel
* [ ] node-exporter
* [ ] oauth2-proxy
* [ ] odoo
* [ ] opencart
* [ ] osclass
* [ ] owncloud
* [ ] parse
* [ ] phpbb
* [ ] phpmyadmin
* [ ] pinniped
* [ ] postgresql
* [ ] postgresql-ha
* [ ] prestashop
* [ ] pytorch
* [ ] rabbitmq
* [ ] rabbitmq-cluster-operator
* [ ] redis
* [ ] redis-cluster
* [ ] redmine
* [ ] schema-registry
* [ ] sealed-secrets
* [ ] solr
* [ ] sonarqube
* [ ] spark
* [ ] spring-cloud-dataflow
* [ ] suitecrm
* [ ] tensorflow-resnet
* [ ] thanos
* [ ] tomcat
* [ ] wavefront
* [ ] wavefront-hpa-adapter
* [ ] wavefront-prometheus-storage-adapter
* [ ] wildfly
* [ ] wordpress
* [ ] wordpress-intel
* [ ] zookeeper


