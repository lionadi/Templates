Elasticserach + Kibana + MongoDB + NodeJS API
---------------------------------------------



A sample docker compose and docker images definitions for a self hosted logging API.

A docker-compose file that contains the definitions needed to create the environment
Docker image definitions for Kibana, Elasticsearch and MongoDB







# Things to know

Both Kibana and Elasticsearch don’t use X-Pack as a security measure, the original image definition that I used as the basis used SearchGuard but I wanted to create something that is free to use.
For a simple authentication I used Nginx reverse-proxies images.
The mongoDB uses and needs credentials to access
The LogAPI would use TSL and basic auth at the moment.

## TODO

Adding token based authentication
Adding the LogAPI nodejs code
Using Readonlyrest to add security between Elasticsearch and Kibana

## Other info

Images for Kibana and Elasticsearch were found and modified from here:
https://github.com/khezen/docker-elasticsearch
https://github.com/khezen/docker-kibana
