FROM labsights/base
MAINTAINER Sorin <sorin@labsights.com>

VOLUME ["/data/teamcity-agent"]

ADD Resources/buildAgent.zip /tmp/buildAgent.zip
ADD Resources/boot.sh /boot.sh
ADD playbooks /opt/ansible-playbooks
RUN ansible-playbook /opt/ansible-playbooks/setup.yml

WORKDIR /opt/teamcity-agent

ENTRYPOINT bash /boot.sh
