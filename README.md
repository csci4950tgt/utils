# Utils

**Prerequisites for running app**

You must have the relevent .env files to run the app locally or with
docker-compose.

- If running with docker-compose, copy the .env.template from this `utils` repo to a local .env
  file in the same directory as the docker-compose.yml file AND make sure the information in it is
  correct (the `GOOGLE_SAFE_BROWSING_API_KEY` should be shared with you in some way).
- If running each service individually, make sure you have the respective .env file filled-in.

## Running web app with docker-compose

1. Make sure you have docker installed locally.
2. Run `docker-compose pull` to ensure all services are using their most recent
   images.
3. Run `docker-compose up`. This will use images hosted on Docker Hub (ex: our [API image](https://hub.docker.com/repository/docker/csci4950tgt/api)) that are
   automatically built from each service's github master branch

That should be it.

**Optional**

To run with locally built images, do the following:

1. Copy the docker-compose file into the root project directory, where `api`,
   `frontend`, and `honeyclient` are all subdirectories

2. Run `docker-compose -f docker-compose.development.yml up --build` (this will take a while to build the first time,
   runs using locally built images from subdirectories)

## Running web app locally with bash script

Currently only have a bash script that works on macs. Not sure if this works on linux.

1. Make sure you have the `mac_run_service.sh` and `mac_cleanup_service.sh` scripts in a parent directory, in the same level as your `api`, `honeyclient`, and `frontend` repos.
2. Run like so:

   ```sh
   sh mac_run_service.sh
   ```

3. The cleanup script isn't auto executing when you CTRL:C out of that command, so also run the cleanup script to kill any remaining processes from this service.

   ```sh
   sh mac_cleanup_service.sh
   ```
