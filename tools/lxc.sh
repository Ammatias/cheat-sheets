#!/usr/bin/env bash
set -Eeuo pipefail

TIMEZONE="Asia/Yekaterinburg"

if [[ $EUID -ne 0 ]]; then
    echo "Run as root"
    exit 1
if

echo "================================="
echo " Configure timezone"
echo "================================="
timedatectl set-timezone "$TIMEZONE"

echo "================================="
echo " System update"
echo "================================="
apt update
DEBIAN_FRONTEND=noninteractive apt full-upgrade -y

echo "================================="
echo " Install prerequisites"
echo "================================="
apt install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

echo "================================="
echo " Remove old Docker packages"
echo "================================="
apt remove -y docker docker-engine docker.io containerd runc || true

echo "================================="
echo " Add Docker repository"
echo "================================="
install -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/debian/gpg \
| gpg --dearmor -o /etc/apt/keyrings/docker.gpg

chmod a+r /etc/apt/keyrings/docker.gpg

echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
https://download.docker.com/linux/debian \
$(. /etc/os-release && echo "$VERSION_CODENAME") stable" \
> /etc/apt/sources.list.d/docker.list

echo "================================="
echo " Install Docker"
echo "================================="
apt update

apt install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-buildx-plugin \
    docker-compose-plugin

systemctl enable docker
systemctl restart docker

echo "================================="
echo " Verification"
echo "================================="
docker --version
docker compose version

echo "================================="
echo " Test container"
echo "================================="
docker run --rm hello-world

echo "================================="
echo " Installation completed"
echo "================================="
