FROM golang:alpine

ARG BITBUCKET_USERNAME
ARG BITBUCKET_PASSWORD

RUN apk add --update build-base git

COPY . .

RUN sh scripts/create_netrc.sh ${BITBUCKET_USERNAME} ${BITBUCKET_PASSWORD} > /root/.netrc
