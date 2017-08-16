# Run James

First you'll need to have `docker` and `docker-compose` installed on your 
machine.

You can retrieve the `docker-compose.yml` file for James by using the 
following command:

`wget https://raw.githubusercontent.com/apache/james-project/master/dockerfiles/run/docker-compose.yml`

After that make sure that you have the Docker daemon is running. If not, 
just run `sudo dockerd`.

Also make sure that nothing is already listening on the following ports: 
80, 25, 110, 143, 465, 587, 993 and 9042.

Then you will have to start the services with `docker-compose up` and 
wait a few seconds.

A default domain will be created: `james.local`

Just edit your hosts file (located at : `/etc/hosts`) and add:

`127.0.0.1  james.local`

The next time you will only have to:

  - go to the folder containing the `docker-compose.yml` file you got 
  last time,

  - run `sudo dockerd` if needed, then `docker-compose up`.
