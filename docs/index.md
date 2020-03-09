<h1 align="center">
  Hackmyresume
</h1>

<p align="center">
  Hackmyresume and a handful of themes for quick use
  <br/><br/>

  <a href="https://github.com/jsloan117/docker-hackmyresume/blob/master/LICENSE/">
    <img alt="license" src="https://img.shields.io/badge/License-GPLv3-blue.svg" />
  </a>
  <a href="https://travis-ci.com/jsloan117/docker-hackmyresume">
    <img alt="build" src="https://travis-ci.com/jsloan117/docker-hackmyresume.svg?branch=master" />
  </a>
  <a href="https://hub.docker.com/r/jsloan117/hackmyresume/">
    <img alt="pulls" src="https://img.shields.io/docker/pulls/jsloan117/hackmyresume.svg" />
  </a>
</p>

Hackmyresume allows you to generate multiple output formats using different themes. Please see [HackMyResume](https://github.com/hacksalot/HackMyResume) for all other things you can do with this application. All installed themes are located under: /usr/lib/node_modules, the default used theme is jsonresume-theme-eloquent.

Mount the folder where your `resume.json` file resides as a volume to /resumes.

## Quick Start

```bash
docker run --rm --name hackmyresume \
-v ${PWD}:/resumes \
jsloan117/hackmyresume:latest
```
