#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

dnf5 remove -y firefox
dnf5 group remove -y "KDE Applications"


#### Example for enabling a System Unit File

systemctl enable podman.socket
