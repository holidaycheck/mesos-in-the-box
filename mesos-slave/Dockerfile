FROM mesosphere/mesos-slave:1.0.11.0.1-2.0.93.ubuntu1404
MAINTAINER Łukasz Przybył <l.przybyl@holidaycheck.com>

RUN echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install docker-engine=1.11.2-0~trusty
