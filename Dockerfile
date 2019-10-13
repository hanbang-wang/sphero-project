FROM debian:stable-slim
COPY . /root
WORKDIR /root
RUN sh ./build.sh
ENTRYPOINT . r2d2/bin/activate && cd spherov2.js/examples && yarn server