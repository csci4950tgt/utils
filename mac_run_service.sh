#!/bin/sh

cd ./api && go build && ./api   &    # run api
cd honeyclient && npm run start &    # run honeyclient
cd frontend && npm run start    &    # run frontend

wait

####### CLEANUP CODE ########

sh mac_run_service.sh