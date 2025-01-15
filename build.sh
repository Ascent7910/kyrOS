#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

### DNF Copr Repos

dnf5 copr enable -y ryanabx/cosmic-epoch 

### DNF packages

dnf5 remove -y firefox plasma-welcome plasma-discover-rpm-ostree
dnf5 install -y cosmic-desktop


#### Example for enabling a System Unit File

systemctl enable podman.socket
