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
    && apt-get -y install \
        wget \
    && apt-get -y build-dep python3.6 \
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
    && apt-get -y purge \
        autoconf \
        automake \
        autopoint \
        autotools-dev \
        binutils \
        binutils-common \
        binutils-x86-64-linux-gnu \
        blt-dev \
        bsdmainutils \
        build-essential \
        cpp \
        cpp-7 \
        debhelper \
        dh-autoreconf \
        dh-strip-nondeterminism \
        diffstat \
        distro-info-data \
        docutils-common \
        dpkg-dev \
        file \
        fontconfig-config \
        fonts-dejavu-core \
        g++ \
        g++-7 \
        gcc \
        gcc-7 \
        gcc-7-base \
        gettext \
        gettext-base \
        groff-base \
        intltool-debian \
        libarchive-zip-perl \
        libasan4 \
        libatomic1 \
        libbinutils \
        libbluetooth-dev \
        libbluetooth3 \
        libbsd0 \
        libbz2-dev \
        libc-dev-bin \
        libc6-dev \
        libcc1-0 \
        libcilkrts5 \
        libcroco3 \
        libdb-dev \
        libdb5.3-dev \
        libdpkg-perl \
        libdrm-amdgpu1 \
        libdrm-common \
        libdrm-intel1 \
        libdrm-nouveau2 \
        libdrm-radeon1 \
        libdrm2 \
        libedit2 \
        libelf1 \
        libexpat1 \
        libexpat1-dev \
        libffi-dev \
        libfile-stripnondeterminism-perl \
        libfontconfig1 \
        libfontconfig1-dev \
        libfontenc1 \
        libfreetype6 \
        libfreetype6-dev \
        libgcc-7-dev \
        libgdbm-compat4 \
        libgdbm-dev \
        libgdbm5 \
        libgl1 \
        libgl1-mesa-dri \
        libglapi-mesa \
        libglib2.0-0 \
        libglvnd0 \
        libglx-mesa0 \
        libglx0 \
        libgomp1 \
        libgpm2 \
        libice-dev \
        libice6 \
        libicu60 \
        libisl19 \
        libitm1 \
        libjs-jquery \
        libjs-sphinxdoc \
        libjs-underscore \
        libllvm6.0 \
        liblsan0 \
        liblzma-dev \
        libmagic-mgc \
        libmagic1 \
        libmpc3 \
        libmpdec-dev \
        libmpdec2 \
        libmpfr6 \
        libmpx2 \
        libncursesw5-dev \
        libpciaccess0 \
        libperl5.26 \
        libpipeline1 \
        libpixman-1-0 \
        libpng-dev \
        libpng16-16 \
        libpthread-stubs0-dev \
        libpython3-stdlib \
        libpython3.6-minimal \
        libpython3.6-stdlib \
        libquadmath0 \
        libreadline-dev \
        libreadline7 \
        libsensors4 \
        libsigsegv2 \
        libsm-dev \
        libsm6 \
        libsqlite3-0 \
        libsqlite3-dev \
        libssl-dev \
        libstdc++-7-dev \
        libtcl8.6 \
        libtext-unidecode-perl \
        libtimedate-perl \
        libtinfo-dev \
        libtk8.6 \
        libtool \
        libtsan0 \
        libubsan0 \
        libx11-6 \
        libx11-data \
        libx11-dev \
        libx11-xcb1 \
        libxau-dev \
        libxau6 \
        libxaw7 \
        libxcb-dri2-0 \
        libxcb-dri3-0 \
        libxcb-glx0 \
        libxcb-present0 \
        libxcb-sync1 \
        libxcb1 \
        libxcb1-dev \
        libxdamage1 \
        libxdmcp-dev \
        libxdmcp6 \
        libxext-dev \
        libxext6 \
        libxfixes3 \
        libxfont2 \
        libxft-dev \
        libxft2 \
        libxkbfile1 \
        libxml-libxml-perl \
        libxml-namespacesupport-perl \
        libxml-sax-base-perl \
        libxml-sax-perl \
        libxml2 \
        libxmu6 \
        libxmuu1 \
        libxpm4 \
        libxrender-dev \
        libxrender1 \
        libxshmfence1 \
        libxss-dev \
        libxss1 \
        libxt-dev \
        libxt6 \
        libxxf86vm1 \
        linux-libc-dev \
        locales \
        lsb-release \
        m4 \
        make \
        man-db \
        mime-support \
        multiarch-support \
        net-tools \
        netbase \
        patch \
        perl \
        perl-modules-5.26 \
        pkg-config \
        po-debconf \
        python-babel-localedata \
        python3 \
        python3-alabaster \
        python3-babel \
        python3-certifi \
        python3-chardet \
        python3-docutils \
        python3-idna \
        python3-imagesize \
        python3-jinja2 \
        python3-lib2to3 \
        python3-markupsafe \
        python3-minimal \
        python3-pkg-resources \
        python3-pygments \
        python3-requests \
        python3-roman \
        python3-six \
        python3-sphinx \
        python3-tz \
        python3-urllib3 \
        python3.6 \
        python3.6-minimal \
        quilt \
        readline-common \
        sgml-base \
        sharutils \
        sphinx-common \
        tcl \
        tcl-dev \
        tcl8.6 \
        tcl8.6-dev \
        tex-common \
        texinfo \
        time \
        tk \
        tk-dev \
        tk8.6 \
        tk8.6-blt2.5 \
        tk8.6-dev \
        tzdata \
        ucf \
        x11-common \
        x11-xkb-utils \
        x11proto-core-dev \
        x11proto-dev \
        x11proto-scrnsaver-dev \
        x11proto-xext-dev \
        xauth \
        xkb-data \
        xml-core \
        xorg-sgml-doctools \
        xserver-common \
        xtrans-dev \
        xvfb \
        xz-utils \
        zlib1g-dev \
    && apt-get clean

ENTRYPOINT ["python3"]
