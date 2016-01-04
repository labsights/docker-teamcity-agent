#!/bin/bash

chown teamcity:teamcity /data/teamcity-agent -R

su teamcity -c "bash /opt/teamcity-agent/bin/agent.sh start"

if [ $? != 0 ];
then
    exit 1
fi

sleep 30

tail -F /opt/teamcity-agent/logs/teamcity-agent.log