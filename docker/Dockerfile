FROM alpine:3.18.4

RUN apk update
RUN apk upgrade
RUN apk add build-base
RUN apk add make
RUN apk add gfortran
RUN apk add gcc
RUN apk add g++

# Install the unit testing framework
RUN apk add ruby
RUN gem install funit
ENV FC="gfortran"
ENV CC="gcc"
ENV CXX="g++"
ENV FSFLAG="-I"

COPY ./inside.sh /inside.sh
