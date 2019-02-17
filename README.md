# docker-hackmyresume

Docker hackmyresume on Alpine Linux

![License](https://img.shields.io/badge/License-GPLv3-blue.svg)

Docker container that allow you to generate PDF/HTML based resumes using hackmyresume.

## Run container from Docker registry

The container is available from the Docker registry and this is the simplest way to get it.
To run the container use this command:

```bash
docker volume create hackmyresume
```

```bash
docker run --rm --name=hackmyresume -it \
-v hackmyresume:/resumes \
-v /pathtoyourresume/resume.json:/resumes/resume.json \
jsloan117/hackmyresume:latest hackmyresume build /resumes/resume.json /resumes/resume.pdf \
-t /usr/lib/node_modules/jsonresume-theme-eloquent
```

```bash
docker run --rm --name=hackmyresume -it \
-v hackmyresume:/resumes \
-v /pathtoyourresume/resume.json:/resumes/resume.json \
jsloan117/hackmyresume:latest hackmyresume build /resumes/resume.json /resumes/resume.pdf \
-t /usr/lib/node_modules/your-jsonresume-theme-name
```

### Installed jsonresume themes

| Theme Name                       |
|:--------------------------------:|
| `jsonresume-theme-eloquent`      |
| `jsonresume-theme-elegant`       |
| `jsonresume-theme-paper`         |
| `jsonresume-theme-kendall`       |
| `jsonresume-theme-modern`        |
| `jsonresume-theme-classy`        |
| `jsonresume-theme-class`         |
| `jsonresume-theme-short`         |
| `jsonresume-theme-slick`         |
| `jsonresume-theme-kwan`          |
| `jsonresume-theme-onepage`       |
| `jsonresume-theme-spartan`       |
| `jsonresume-theme-stackoverflow` |

#### Use theme not install

```bash
docker run --rm --name=hackmyresume -it \
-v hackmyresume:/resumes \
-v /pathtoyourresume/resume.json:/resumes/resume.json \
jsloan117/hackmyresume:latest /bin/bash -c 'npm install -g jsonresume-theme-flat && hackmyresume build /resumes/resume.json /resumes/resume.pdf -t /usr/lib/node_modules/jsonresume-theme-flat'
```
