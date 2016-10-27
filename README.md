# ElastAlert : ElasticSearch alerting
Docker container for ElastAlert : alerting solution for ElasticSearch

Docker image for ElastAlert : https://github.com/Yelp/elastalert

This image is built to connect to remote ElasticSearch specified in config.yaml file.

# Run example
docker run -ti -d --name modye/elastalert -v /config:/opt/elastalert/config elast-python --rule /opt/elastalert/config/rules/rule.yaml

# Possible options
- --rule : specify rule to execute
- --verbose : activate verbose mode
- --debug : activate debug mode
- and all elastalert run options
