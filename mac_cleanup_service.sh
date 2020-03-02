#!/bin/sh

echo Service shutting down...

### kill processes if still running

# Honeyclient
pid=$(lsof -ti tcp:8000)
if [[ $pid ]]; then
  kill -9 $pid
fi

# Api
pid=$(lsof -ti tcp:8080)
if [[ $pid ]]; then
  kill -9 $pid
fi

# Frontend
pid=$(lsof -ti tcp:3000)
if [[ $pid ]]; then
  kill -9 $pid
fi
