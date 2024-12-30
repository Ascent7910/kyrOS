#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

dnf5 remove -y firefox plasma-welcome plasma-discover-rpm-ostree


#### Example for enabling a System Unit File

systemctl enable podman.socket
