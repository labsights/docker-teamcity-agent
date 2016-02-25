FROM labsights/symfony
MAINTAINER Sorin <sorin@labsights.com>

VOLUME ["/data/teamcity-agent"]

ADD Resources/buildAgent.zip /tmp/buildAgent.zip
ADD Resources/buildAgent.properties /opt/teamcity-agent/conf/buildAgent.properties.dist
ADD Resources/bin /docker-bin
ENV PATH=$PATH:/docker-bin

ADD playbooks /opt/ansible-playbooks
RUN ansible-playbook /opt/ansible-playbooks/setup.yml

WORKDIR /opt/teamcity-agent

CMD ["boot"]
