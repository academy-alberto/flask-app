AGENT_NAME=$1

docker run --name=$AGENT_NAME \
-v team_city_agent_config-$AGENT_NAME:/data/teamcity_agent/conf \
-v /var/run/docker.sock:/var/run/docker.sock \
-v /usr/local/bin/docker:/usr/bin/docker \
-e SERVER_URL="http://172.17.0.2:8111" \
-e AGENT_NAME=$AGENT_NAME \
-d jetbrains/teamcity-agent
