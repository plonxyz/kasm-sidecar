
# OpenVPN Client for Kasm Workspaces

## Introduction

This repository contains a Docker container setup for an OpenVPN client, specifically designed to be used as a sidecar container in Kasm Workspaces. It enables secure and private network access within the Kasm workspace environment.

## Prerequisites

- Docker installed on your system.
- Access to Kasm Workspaces setup.
- OpenVPN configuration file (`.ovpn`) along with any required keys or certificates.

## Installation

1. **Clone the Repository**

    ```bash
    git clone https://github.com/plonxyz/openvpn-kasm-sidecar.git
    cd openvpn-kasm-sidecar
    ```

2. **Build the Docker Image**

    Place your OpenVPN configuration file in the repository directory.

    ```bash
    docker build -t plon/openvpn-client .
    ```

## Usage

- **Running the Container**

    Run the OpenVPN client container with the necessary permissions:

    ```bash
    sudo docker run -d  --privileged  --cap-add NET_ADMIN --device /dev/net/tun  --name open-vpn   --net vpn-1   --ip 172.20.0.2 plon/openvpn-client
    ```

- **Integrating with Kasm Workspaces**

    Configure the OpenVPN container as a sidecar in your Kasm Workspaces deployment. Refer to Kasm's documentation for specific details on integrating sidecar containers.
    [kasm openvpn-sidecar-container](https://kasmweb.com/docs/latest/how_to/vpn_sidecar/vpn_sidecar.html#the-openvpn-sidecar-container)
## Configuration

- The OpenVPN configuration file and any related keys/certificates should be placed in the same directory as the Dockerfile before building the image.

## Support

For issues, suggestions, or contributions, please open an issue or a pull request in this repository. For more detailed guidance and support on Kasm Workspaces, refer to the [official Kasm documentation](https://www.kasmweb.com/docs/latest/index.html).
