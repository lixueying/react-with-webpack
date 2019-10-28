# Simple Front-End
This repo is for react simple demo. 
You could download this repo and write your business code so that you don't need to build local env.

# Quick Start
It will start docker, will do npm install inside docker.
`docker build --tag xiaoming .`
`docker run --rm -d -p 3333:80 xiaoming`

## Dev mode
Run `npm run start` to start development server in local

## Build
Run `npm run build`

## localhost:8000
- visit `localhost:8000` will connect to backend dev environment

## Run webpack-bundle-analyzer
- Run `npm run build` to build project
- Run `npm run analyz` to see the report