# OpenVPN Scripts
Expect scripts for automating interactions with [openvpn-install](https://github.com/Nyr/openvpn-install).

### Testing
A docker file has been created to allow integration testing in an environment configured with [openvpn-install](https://github.com/Nyr/openvpn-install).

**Steps to test:**
1. `docker build -t scr:test .`
2. `docker run -it --rm --device=/dev/net/tun -v ./scripts:/scripts scr:test`