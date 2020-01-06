FROM python:3.8.0-alpine3.10
MAINTAINER Yves Bovard <ybovard@gmail.com>

# update image first
RUN apk update && apk upgrade && \
    pip install --upgrade pip

# install ara API server
RUN pip install ara[server]

ENTRYPOINT ["ara-manage","runserver"] 
CMD ["0.0.0.0:8000"]
