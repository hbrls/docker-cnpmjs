# docker-cnpm

docker image of [cnpmjs.org](https://cnpmjs.org/), the "Company NPM" by alibaba ![cnpmjs.org-version-badge](https://img.shields.io/badge/cnpm-2.17.2-blue.svg?style=flat-square)

https://hub.docker.com/r/hbrls/cnpmjs/

# Easy

    $ docker pull hbrls/cnpm:0.0.4
    $ docker run -d \
                 -p 7001:7001 \
                 -p 7002:7002 \
                 -v /path/to/config:/var/app/cnpmjs.org/config \
                 -v /path/to/customize/README.md:/var/app/cnpmjs.org/docs/web/readme.md \
                 -v /path/to/storage:/var/www \
                 --name cnpm hbrls/cnpm:0.0.3

# Reference

1. [GitHub: cnpm/cnpmjs.org](https://github.com/cnpm/cnpmjs.org)
2. [跟我一起部署和定制 CNPM——基础部署](http://f2e.souche.com/blog/let-cnpm-base-deploy/)
3. [Deploy a private npm registry in 5 minutes](https://github.com/cnpm/cnpmjs.org/wiki/Deploy-a-private-npm-registry-in-5-minutes)
