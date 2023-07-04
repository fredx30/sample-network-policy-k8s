## Sample setup of testing environment for network policies.
Here i set out to setup an environment for poking around some small scale limit 
and boundary testing of the k8s network policies.
The setup uses the `env` label to differentiate between the isolated network 
groups. Within the `env=dev` environment the `app=client` should be able to 
connect to the http server with the `app=server` tag.
Additionally there is a rouge pod with the `app=client` tag thats tagged to 
the `env=prod`. This pod should not be able to connect to the dev server.

The clients use a liveliness probe to curl http://server to check their 
connectivity. Based on this the pods success/fail with the network policies 
should be displayed using a `kubectl get pods --watch`.

For the debugging and exploration around this i add/remove tags to the 
ubuntu pod and attempt egress with ex. `apt update` and web
server ingress with `curl http://server`.

#### Conditions
For the "works on my machine" - setup.
- Kubernetes (Digital ocean - 1 node)

#### Failure conditions
- Docker desktop (Does not seem to work)
- 

### Debug packages for debug pod

````bash
apt update
apt install -y iputils-ping net-tools dnsutils curl
````
