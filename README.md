# Concourse CI Worker Docker Image

This image is used to run a [Garden](https://github.com/cloudfoundry-incubator/garden) worker and registers it via a [TSA](https://github.com/concourse/tsa).

## Building the Docker image

To build the `vyshane/concourse-worker` docker image, run:

```
./build.sh
```

## Configuration

The following environment variables are available for configuration.

Environment Variable | Description
--- | ---
WORK_DIR | Specifies where container data should be placed. Make sure there is plenty of disk space available, as this is where your builds and resources will end up. Defaults to `/opt/concourse/worker`.
PEER_IP | Optional. Specifies the IP address of this worker that is reachable by other web nodes in your cluster. If your worker is in a private network, this can be omitted, and the TSA will forward connections to the worker via a SSH tunnel instead.
TSA_HOST | Refers to wherever your TSA node is listening. This may be the address of a load balancer if you're running multiple web nodes.
TSA_PORT | Specifies the port on which your TSA node is listening. Defaults to 2222.
TSA_PUBLIC_KEY | Specifies the path to the TSA public key file. It is used to ensure we're connecting to the TSA node that we should be connecting to, and is used like known_hosts with the ssh command.
TSA_WORKER_PRIVATE_KEY | Specifies the path to the key to use when authenticating to the TSA.

See the [Concourse binary distribution documentation](https://github.com/concourse/bin#prerequisites) for more information regarding keys.