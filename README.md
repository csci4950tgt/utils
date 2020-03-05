# Utils

**Prerequisites for running app**

You must have the relevent .env files to run the app locally or with
docker-compose.

- If running with docker-compose, make sure the .env template found in this
  `utils` repo is filled out and at the same level as the docker-compose.yml
  file.
- If running locally, make sure that you have a filled-in .env file inside the
  `honeyclient`.

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
