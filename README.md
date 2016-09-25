# Docker-Nessus
Docker build for Tenable's Nessus Vulnerability Scanner

## Nessus
The Most Widely-Deployed Vulnerability Assessment Solution
 
Nessus has been deployed for vulnerability, configuration and compliance assessments by more than one million users across the globe. Nessus prevents network attacks by identifying the vulnerabilities and configuration issues that hackers use to penetrate your network.

## Why
There isnt a Docker image that works. So I made one.

## versions
`treadie/nessus:latest` - Nessus vulnerability scanner 6.8.1
`treadie/nessus:6.8.1` - Nessus vulnerability scanner 6.8.1

## How

### Prereqs
Buy a licence, or register for a home user at tenable.com

### Pull
To pull this image from the Docker registry, open a shell prompt and enter:
`docker pull treadie/nessus`

### Usage
Run a container from the image with the following command:

`docker run -t --name nessus -p 8834:8834 treadie/nessus`

the command above is the minimum you will need to get the webui. Once you have that you can then register and download the latest plugings

### Register via cmd line

`docker exec -i /opt/nessus/sbin/nessuscli fetch --register $LICENCE`

_Note: $LICENCE assumes that you have added your licence string to the image variable. Otherwise substitute if for the real string.

### Update plugins via cmd line

`docker exec -i /opt/nessus/sbin/nessuscli update --plugins-only`

## Build

1. Clone repo
2. Go to repo dir
3. `docker build -t "treadie/nessus" .`
4. `docker history treadie/nessus` 
5. `docker build -t "treadie/nessus:latest" -t "treadie/nessus:6.8.1" .`