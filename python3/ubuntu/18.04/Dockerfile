# Python 3.6 on Ubuntu
# Copyright (C) 2018 Rodrigo Martínez <dev@brunneis.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

FROM ubuntu:18.04
MAINTAINER "Rodrigo Martínez" <dev@brunneis.com>

################################################
# PYTHON
################################################

ARG PYTHON_VERSION
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN \
    sed -i 's@# deb-src http://archive.ubuntu.com/ubuntu/ bionic main restricted@deb-src http://archive.ubuntu.com/ubuntu/ bionic main restricted@' /etc/apt/sources.list \
    && apt-get update && apt-get -y upgrade \
    && dpkg-query -Wf '${Package}\n' | sort > init_pkgs \
    && apt-get -y install \
        wget \
    && apt-get -y build-dep python3.6 \
    && dpkg-query -Wf '${Package}\n' | sort > new_pkgs \
    && apt-get -y install \
        libssh-dev \
    && wget https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz \
    && tar xf Python-$PYTHON_VERSION.tgz \
    && cd Python-$PYTHON_VERSION \
    && sed -i 's/$(MAKE) run_profile_task//' Makefile.pre.in \
    && ./configure --enable-optimizations \
    && make \
    && make install \
    && cd .. \
    && rm -rf Python-$PYTHON_VERSION \
    && rm Python-$PYTHON_VERSION.tgz \
    && ln -sf /usr/local/bin/python3 /usr/bin/python \
    && ln -s /usr/local/bin/pip3 /usr/bin/pip \
    && pip install --upgrade pip \
    && apt-get -y purge $(diff -u init_pkgs new_pkgs | grep -E "^\+" | cut -d + -f2- | sed -n '1!p') \
    && apt-get clean \
    && rm init_pkgs new_pkgs \
    && rm -rf \
        /root/.cache/pip \
    && find / -type d -name __pycache__ -exec rm -r {} \+

ENTRYPOINT ["python3"]
