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
  * The arm64 test machine was slow, causing frequent timeouts. 

* result

    | App    | Tests   | bitnami (amd64) | bitnami-compat (amd64) | bitnami-compat (arm64) | official (amd64) | official (arm64) | official link |
    | :----- | :------ | :-------------: | :--------------------: | :--------------------: | :--------------: | :--------------: | :-----------: |
    | cert-manager  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | consul  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | consul  | Cypress |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | contour  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :x:     |                  |                  |               |
    | discourse  | Goss    |  :x: | :x: |      |                  |                  |               |
    | discourse  | Cypress |  :heavy_check_mark: | :heavy_check_mark: | :x:     |                  |                  |               |
    | elasticsearch  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | elasticsearch  | Cypress |  :heavy_check_mark: | :heavy_check_mark: | :x:     |                  |                  |               |
    | etcd  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | external-dns  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | fluentd  | Goss    |  :x: | :x: | :x:     |                  |                  |               |
    | kafka  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | keycloak  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | keycloak  | Cypress |  :heavy_check_mark: | :heavy_check_mark: | :x:     |                  |                  |               |
    | mariadb  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | mariadb-galera  | Goss    |  :heavy_check_mark: |  |      |                  |                  |               |
    | memcached  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | minio  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | minio  | Cypress |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | mongodb  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | mongodb-sharded  | Goss    |  :x: | :x: |      |                  |                  |               |
    | mysql  | Goss    |  :heavy_check_mark: |  | :heavy_check_mark:     |                  |                  |               |
    | nginx  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | nginx  | Cypress |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | postgresql  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | rabbitmq  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :x:     |                  |                  |               |
    | rabbitmq  | Cypress |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | rabbitmq-cluster-operator  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | rabbitmq-cluster-operator  | Cypress |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | redis  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | redis-cluster  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | sealed-secrets  | Cypress |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | solr  | Goss    |  :x: | :x: | :x:     |                  |                  |               |
    | solr  | Cypress |  :heavy_check_mark: | :x: | :x:     |                  |                  |               |
    | tomcat  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | tomcat  | Cypress |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | wordpress  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | wordpress  | Cypress |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | zookeeper  | Goss    |  :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:     |                  |                  |               |
    | apache  | Goss    |  :heavy_check_mark: | :heavy_check_mark: |      |                  |                  |               |
    | apache  | Cypress |  :heavy_check_mark: | :heavy_check_mark: | :x:     |                  |                  |               |
