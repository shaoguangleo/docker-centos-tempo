# About

Dockerfile to build a tempo image based on CentOS.

# How to run

Just type the following commands

```
$ docker run -it -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix shaoguangleo/centos-tempo
```

As we all know, the version can be `lateset` or `$ cat VERSION`

# travis

[![Build Status](https://www.travis-ci.org/shaoguangleo/docker-centos-tempo.svg?branch=master)](https://www.travis-ci.org/shaoguangleo/docker-centos-tempo)
