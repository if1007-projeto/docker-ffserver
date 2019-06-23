#
# Dockerfile for ffserver
#

FROM irbp/ffmpeg

COPY ffserver.conf /etc/

EXPOSE 554 8090

ENTRYPOINT ["ffserver"]