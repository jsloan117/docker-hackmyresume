The image is available from the Docker registry and this is the simplest way to get it.

To run the image use this command:

```bash
docker run --rm --name hackmyresume \
-v ${PWD}:/resumes \
jsloan117/hackmyresume:latest --help
```

```bash
docker run --rm --name hackmyresume \
-v ${PWD}:/resumes \
jsloan117/hackmyresume:latest build /resumes/resume.json /resumes/resume.pdf \
-t /usr/lib/node_modules/jsonresume-theme-stackoverflow
```
