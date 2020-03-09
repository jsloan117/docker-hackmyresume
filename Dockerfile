FROM alpine:3.11
LABEL Name=hackmyresume maintainer="Jonathan Sloan"

RUN echo "*** installing packages ***" \
    && apk update && apk --no-cache add wkhtmltopdf nodejs npm \
    && echo "*** cleanup ***" \
    && rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

RUN npm install -g \
    hackmyresume \
    jsonresume-theme-eloquent \
    jsonresume-theme-elegant \
    jsonresume-theme-paper \
    jsonresume-theme-kendall \
    jsonresume-theme-modern \
    jsonresume-theme-classy \
    jsonresume-theme-class \
    jsonresume-theme-short \
    jsonresume-theme-slick \
    jsonresume-theme-kwan \
    jsonresume-theme-onepage \
    jsonresume-theme-spartan \
    jsonresume-theme-stackoverflow

WORKDIR /resumes

VOLUME [ "/resumes" ]

ENTRYPOINT [ "hackmyresume" ]
CMD [ "build", "/resumes/resume.json", "/resumes/resume.pdf", "-t", "/usr/lib/node_modules/jsonresume-theme-eloquent" ]
