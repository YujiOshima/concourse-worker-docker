FROM yujioshima/concourse-base
MAINTAINER Vy-Shane Xie

COPY scripts/ /usr/local/scripts/
ENTRYPOINT ["/usr/local/scripts/docker-entrypoint.sh"]
CMD ["concourse", "worker"]
