# Local development

Install all dependencies and build everything

    $ ./build.sh

In one window:

    $ cd api
    $ npm run build-dev

In another window:

    $ cd api
    $ npm run start-dev

This will automatically compile and reload the app when you change the source files.

# Docker deployment

Build images

    $ ./clean.sh
    $ docker build -t api api
    $ docker build -t accounts accounts
    $ docker build -t messages messages

Manually start the services, running in the background, on ports 2001-2003

    $ docker run --detach --name testapp-api -p 2001:5000 api
    $ docker run --detach --name testapp-accounts -p 2002:5000 accounts
    $ docker run --detach --name testapp-messages -p 2003:5000 messages

Test the services

    $ curl http://localhost:2001
    Hello from API service
    $ curl http://localhost:2002
    Hello from Accounts service
    $ curl http://localhost:2003
    Hello from Messages service

Shut down the services

    $ docker rm -f testapp-api
    $ docker rm -f testapp-accounts
    $ docker rm -f testapp-messages
