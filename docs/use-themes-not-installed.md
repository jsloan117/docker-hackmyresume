Use theme not installed

```bash
docker run --rm --entrypoint="" --name hackmyresume \
-v ${PWD}:/resumes \
jsloan117/hackmyresume:latest /bin/bash -c 'npm install -g jsonresume-theme-flat && hackmyresume build /resumes/resume.json /resumes/resume.pdf -t /usr/lib/node_modules/jsonresume-theme-flat'
```
