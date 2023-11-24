FROM alpine:latest

# Install OpenVPN
RUN apk add --no-cache openvpn iptables

# Copy your OpenVPN configuration file into the container
COPY ./kasm.ovpn /etc/openvpn/

# Optional: Copy any additional files like keys or certificates
COPY ./passfile /
COPY ./entry.sh /usr/local/bin
ENTRYPOINT [ "entry.sh" ]
