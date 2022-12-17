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
  * Since the test environment is not yet complete, the bitnami official image also has an error.

* result

    | App    | Tests   | bitnami (amd64) | bitnami-compat (amd64) | bitnami-compat (arm64) | official (amd64) | official (arm64) | official link |
    | :----- | :------ | :-------------: | :--------------------: | :--------------------: | :--------------: | :--------------: | :-----------: |
    | cert-manager  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | consul  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | consul  | Cypress |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | contour  | Goss    |  :heavy_check_mark: | :x: |      |                  |                  |               |
    | discourse  | Goss    |  :x: | :x: |      |                  |                  |               |
    | discourse  | Cypress |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | elasticsearch  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | elasticsearch  | Cypress |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | etcd  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | external-dns  | Goss    |  :heavy_check_mark: | :x: |      |                  |                  |               |
    | fluentd  | Goss    |  :x: | :x: |      |                  |                  |               |
    | kafka  | Goss    |  :heavy_check_mark: |  |      |                  |                  |               |
    | keycloak  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | keycloak  | Cypress |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | mariadb  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | mariadb-galera  | Goss    |  :heavy_check_mark: |  |      |                  |                  |               |
    | memcached  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | minio  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | minio  | Cypress |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | mongodb  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | mongodb-sharded  | Goss    |  :heavy_check_mark: | :x: |      |                  |                  |               |
    | mysql  | Goss    |  :heavy_check_mark: |  |      |                  |                  |               |
    | nginx  | Goss    |  :heavy_check_mark: |  |      |                  |                  |               |
    | nginx  | Cypress |  :heavy_check_mark: | :x: |      |                  |                  |               |
    | postgresql  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | rabbitmq  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | rabbitmq  | Cypress |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | rabbitmq-cluster-operator  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | rabbitmq-cluster-operator  | Cypress |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | redis  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | redis-cluster  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | sealed-secrets  | Cypress |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | solr  | Goss    |  :x: | :x: |      |                  |                  |               |
    | solr  | Cypress |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | tomcat  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | tomcat  | Cypress |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | wordpress  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | wordpress  | Cypress |  :heavy_check_mark: | :x: |      |                  |                  |               |
    | zookeeper  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | apache  | Goss    |  :heavy_check_mark: |  |      |                  |                  |               |
    | apache  | Cypress |  :heavy_check_mark: | :x: |      |                  |                  |               |

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
* [x] consul
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


