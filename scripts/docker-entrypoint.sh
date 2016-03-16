#!/bin/bash
set -e

if [ "$1" = 'concourse' ] && [ "$2" = 'worker' ]; then
    : ${WORK_DIR:=/opt/concourse/worker}
    peer_ip_flag="${PEER_IP:+"--peer-ip $PEER_IP"}"
    : ${TSA_PORT:=2222}

    exec concourse worker \
        --work-dir $WORK_DIR \
        $peer_ip_flag \
        --tsa-host $TSA_HOST \
        --tsa-port $TSA_PORT \
        --tsa-public-key $TSA_PUBLIC_KEY \
        --tsa-worker-private-key $TSA_WORKER_PRIVATE_KEY \
        "$@"
fi

exec "$@"
