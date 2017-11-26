FROM docker:latest

RUN apk update && apk upgrade && \
    apk add --no-cache bash build-base libstdc++ curl
    
# Python
RUN apk update && apk upgrade && \
    apk add --no-cache python python-dev

RUN curl https://bootstrap.pypa.io/get-pip.py | python
    
RUN pip install docker-compose
