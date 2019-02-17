FROM alpine:latest
LABEL Name=hackmyresume Version=1.0
LABEL maintainer="Jonathan Sloan"

# Install wkhtmltopdf to be able to generate PDF resumes

RUN echo "*** updating system ***" \
    && apk update && apk upgrade \
    && echo "*** installing packages ***" \
    && apk --no-cache add bash wkhtmltopdf nodejs npm \
    && echo "*** cleanup ***" \
    && rm -rf /tmp/* /var/tmp/*

# Install hackmyresume and jsonresume themes packages
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
