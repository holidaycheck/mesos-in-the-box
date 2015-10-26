dust-local
==========

Setup of our dust cluster based on docker images.

This setup was made as a PoC to see if rollout of dust infrastructure is possible via dockers only.

Also it can serve as a temporary mesos cluster.

Setup
=====

This setup has:
 - 1 instance of zookeeper ver 3.4.6
 - 1 instance of mesos-master ver 0.23.0
 - 1 instance of mesos-slave  ver 0.23.0
 - 1 instance of marathon ver 0.9.1
 - 1 instance of chronos ver 2.4.0
 - 1 instance of bamboover 0.2.14  with haproxy ver 1.5.14


Usage
=====

To run this cluster you need to have **docker 1.8.0 ** and **docker-compose 1.2.0** installed.
Checkout this repository and run **docker-compose up -d** inside.
Healthchecks for containers can now be defined.

Notice
======

This setup uses net:host docker parameter. It means, docker configures a bridge between container network interface and network interdace of your host.
Therefore ensure these ports are available:
 - 2181, 2888, 3888 (zookeeper)
 - 5050, 5051 (mesos master and slave)
 - 8080 (marathon)
 - 4400 (chronos)
 - 80, 8000 (haproxy and bamboo)

Links
=====
- Marathon: **http://localhost:8080**
- Chronos: **http://localhost:4400**
- Mesos: **http://localhost:5050**
- Bamboo: **http://localhost:8000**
- Haproxy: **http://admin:admin@localhost/haproxy_stats**

Todo
====
Write a HOWTO for clustering this configuration.

Credits
=======

Used repositiories and docker images:
 - https://hub.docker.com/r/mesoscloud/mesos-master/
 - https://hub.docker.com/r/mesoscloud/mesos-slave/
 - https://hub.docker.com/r/mesoscloud/chronos/
 - https://hub.docker.com/r/mesoscloud/zookeeper/
 - https://hub.docker.com/r/mesoscloud/marathon/
 - https://github.com/QubitProducts/bamboo
