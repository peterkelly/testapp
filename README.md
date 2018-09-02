# Local development

    ./build.sh

In one window:

    cd api
    npm run build-dev

In another window:

    cd api
    npm run start-dev

This will automatically compile and reload the app when you change the source files.

# Docker deployment

    cd api
    ./clean.sh
    docker rmi api # if it exists
    docker build -t api .

Run interactively (exposing on port 1234 to the outside world):

    docker run --rm -it -p 1234:5000 api

Run in background:

    docker run -d -p 1234:5000 api
    docker logs -f <container-id>
    docker rm -f <container-id>
