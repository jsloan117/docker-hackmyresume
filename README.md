# docker-hackmyresume

![License](https://img.shields.io/badge/License-GPLv3-blue.svg)
[![Build Status](https://travis-ci.com/jsloan117/docker-hackmyresume.svg?branch=master)](https://travis-ci.com/jsloan117/docker-hackmyresume)
[![Docker Pulls](https://img.shields.io/docker/pulls/jsloan117/hackmyresume.svg)](https://img.shields.io/docker/pulls/jsloan117/hackmyresume.svg)

Hackmyresume allows you to generate multiple output formats using different themes. Please see [HackMyResume](https://github.com/hacksalot/HackMyResume) for all other things you can do with this application.

## Quick setup

This image contains hackmyresume and a handful of themes for quick use. Please see [Run from Docker registry](http://jsloan117.github.io/docker-mkdocs/run-from-docker-registry) for more details and commands. All installed themes are located under: /usr/lib/node_modules, the default theme is jsonresume-theme-eloquent.

Mount the folder where your `resume.json` file resides as a volume to /resumes.

```bash
docker run --rm --name hackmyresume \
-v ${PWD}:/resumes \
jsloan117/hackmyresume:latest
```

## Documentation

The full documentation is available [here](http://jsloan117.github.io/docker-hackmyresume).
