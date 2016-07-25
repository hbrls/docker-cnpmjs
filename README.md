# docker-cnpm
一键部署 cnpm

# Docker

    $ docker build -t hbrls/cnpm:0.0.1 .
    $ docker run -d -p 7001:7001 -p 7002:7002 -v /path/to/config:/var/app/cnpmjs.org/config --name cnpm hbrls/cnpm:0.0.2

# Reference

1. [跟我一起部署和定制 CNPM——基础部署](http://f2e.souche.com/blog/let-cnpm-base-deploy/)
2. [Deploy a private npm registry in 5 minutes](https://github.com/cnpm/cnpmjs.org/wiki/Deploy-a-private-npm-registry-in-5-minutes)
