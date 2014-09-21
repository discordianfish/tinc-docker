# Tinc on Docker
## Usage

First create a data volume container to keep your tinc config:

  $ docker run --name tinc-data -v /tinc busybox true

Get the path to the volume and create/copy your config there:

  $ docker inspect tinc-data

Run tinc:

  $ docker run --net=host --privileged --volumes-from tinc-data tinc
