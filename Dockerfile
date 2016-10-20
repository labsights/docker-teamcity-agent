FROM jetbrains/teamcity-agent
MAINTAINER Sorin <sorin@labsights.com>

ADD setup.sh /tmp/
ADD bin/rancher-compose /usr/local/bin

RUN bash /tmp/setup.sh;rm /tmp/setup.sh
