# docker-cnpm
一键部署 cnpm

# Docker

    $ docker build -t hbrls/cnpm:0.0.1 .
    $ docker run -d -p 7001:7001 -p 7002:7002 --name cnpm hbrls/cnpm:0.0.1
