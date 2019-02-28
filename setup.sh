#!/bin/sh

mv -v /etc/apt/sources.list /etc/apt/sources.list_bak
cp -rvf /setup/sources.list /etc/apt/sources.list
apt-get -y update
apt-get -y ugprade
apt-get -y dist-upgrade
apt-get -y install wget openssh-server openssh-client
apt-get -y install git phablet-tools  gcc g++ binutils patch bzip2 flex make gettext \
    pkg-config unzip zlib1g-dev libc6-dev subversion libncurses5-dev gawk \
    sharutils curl libxml-parser-perl ocaml-nox ocaml-nox ocaml ocaml-findlib \
    libpcre3-dev binutils-gold python-yaml vim python-pip
pip install --upgrade requests pip
groupadd asmc
useradd -m llwang -g asmc
passwd llwang <<EOF
Phil1029**
Phil1029**
EOF
passwd <<EOF
Phil1029**
Phil1029**
EOF
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 16126D3A3E5C1192
sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
service ssh restart
