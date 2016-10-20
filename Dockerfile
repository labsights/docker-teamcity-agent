FROM jetbrains/teamcity-agent
MAINTAINER Sorin <sorin@labsights.com>

ADD setup.sh /tmp/
RUN bash /tmp/setup.sh;rm /tmp/setup.sh
