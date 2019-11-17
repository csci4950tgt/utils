# Utils

## Running web app with docker-compose

1. Make sure you have docker installed locally.
2. Copy the docker-compose file into the root project directory, where `api`,
   `frontend`, and `honeyclient` are all subdirectories
3. Run `docker-compose up`. (this will take a while to build the first time,
   runs using locally built images from subdirectories)

That should be it.

**Optional**
To run with images hosted on Docker Hub (ex: our [API image](https://hub.docker.com/repository/docker/csci4950tgt/api)), use the following command:

`docker-compose -f docker-compose.production.yml up`
