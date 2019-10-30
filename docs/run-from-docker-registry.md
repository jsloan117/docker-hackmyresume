The container is available from the Docker registry and this is the simplest way to get it.
To run the container use this command:

```bash
docker run --rm --name=hackmyresume -it \
-v ${PWD}:/resumes \
jsloan117/hackmyresume:latest hackmyresume build /resumes/resume.json /resumes/resume.pdf \
-t /usr/lib/node_modules/your-jsonresume-theme-name
```

```bash
docker run --rm --name=hackmyresume -it \
-v ${PWD}:/resumes \
jsloan117/hackmyresume:latest hackmyresume --help
```
