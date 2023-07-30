# OpenVPN Scripts
Expect scripts for automating interactions with [openvpn-install](https://github.com/Nyr/openvpn-install).

## Testing
A docker file has been created to allow integration testing in an environment configured with [openvpn-install](https://github.com/Nyr/openvpn-install).

**Steps to test:**

First we must build the docker image. Navigate to the project root directory and run `docker build -t scr:test .` 
This only needs to be done once, or when there is a change to the Dockerfile. To launch the test environment with your latest code run:
1. `docker run -it --rm --device=/dev/net/tun -v ./scripts:/scripts scr:test`