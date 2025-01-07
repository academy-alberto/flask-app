docker run \
-v team_city_data:/data/teamcity_server/datadir \
-v team_city_logs:/opt/teamcity/logs \
-p 80:8111 \
-d jetbrains/teamcity-server
