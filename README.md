# docker-hackmyresume

![License](https://img.shields.io/badge/License-GPLv3-blue.svg)
[![Docker Pulls](https://img.shields.io/docker/pulls/jsloan117/hackmyresume.svg)](https://img.shields.io/docker/pulls/jsloan117/hackmyresume.svg)
[![](https://images.microbadger.com/badges/image/jsloan117/hackmyresume.svg)](https://microbadger.com/images/jsloan117/hackmyresume "Get your own image badge on microbadger.com")

Docker container that allows you to generate multiple output formats using hackmyresume. Please see [HackMyResume](https://github.com/hacksalot/HackMyResume) for all other things you can do with this application.

## Quick setup

This container contains hackmyresume and a handful of themes for quick use. Please see [Run from Docker registry](http://jsloan117.github.io/docker-mkdocs/run-from-docker-registry) for more details and commands.

```bash
docker run --rm --name=hackmyresume -it \
-v ${PWD}:/resumes \
jsloan117/hackmyresume:latest hackmyresume build /resumes/resume.json /resumes/resume.pdf \
-t /usr/lib/node_modules/jsonresume-theme-eloquent
```

## Documentation

The full documentation is available [here](http://jsloan117.github.io/docker-hackmyresume).
