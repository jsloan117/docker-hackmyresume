<h1 align="center">
  docker-hackmyresume
</h1>
<p align="center">
  Multiple formats for your resume needs.</a>.
  <br/><br/>

  <a href="https://github.com/jsloan117/docker-hackmyresume/blob/master/LICENSE/">
    <img alt="license" src="https://img.shields.io/badge/License-GPLv3-blue.svg" />
  </a>
  <a href="https://hub.docker.com/r/jsloan117/hackmyresume/">
    <img alt="pulls" src="https://img.shields.io/docker/pulls/jsloan117/hackmyresume.svg" />
  </a>
  <a href="https://microbadger.com/images/jsloan117/hackmyresume">
    <img alt="Microbadger" src="https://images.microbadger.com/badges/image/jsloan117/hackmyresume.svg" />
  </a>
</p>
Docker container that allows you to generate multiple output formats using hackmyresume. Please see [HackMyResume](https://github.com/hacksalot/HackMyResume) for all other things you can do with this application
## Quick Start

```bash
docker run --rm --name=hackmyresume -it \
-v ${PWD}:/resumes \
jsloan117/hackmyresume:latest hackmyresume build /resumes/resume.json /resumes/resume.pdf \
-t /usr/lib/node_modules/jsonresume-theme-eloquent
```
