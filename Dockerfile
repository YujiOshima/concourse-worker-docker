FROM yujioshima/concourse-base-docker
MAINTAINER Yuji Oshima

COPY scripts/ /usr/local/scripts/
ENTRYPOINT ["/usr/local/scripts/docker-entrypoint.sh"]
CMD ["concourse", "worker"]
