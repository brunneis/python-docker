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

FROM ubuntu:16.10
MAINTAINER "Rodrigo Martínez" <dev@brunneis.com>

################################################
# PYTHON
################################################

ENV PYTHON_VERSION 3.6.4

RUN \
	apt-get update && apt-get -y upgrade \
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
    && pip3 install --upgrade pip \
    && apt-get -y purge \
		wget \
        autoconf \
        automake \
        autopoint \
        autotools-dev \
        binutils \
        blt-dev \
        bsdmainutils \
        build-essential \
        bzip2 \
        cpp \
        cpp-6 \
        debhelper \
        dh-autoreconf \
        dh-python \
        dh-strip-nondeterminism \
        diffstat \
        distro-info-data \
        docutils-common \
        dpkg-dev \
        file \
        fontconfig-config \
        fonts-dejavu-core \
        g++ \
        g++-6 \
        gcc \
        gcc-6 \
        gettext \
        gettext-base \
        groff-base \
        intltool-debian \
        libarchive-zip-perl \
        libasan3 \
        libatomic1 \
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
        libdrm-intel1 \
        libdrm-nouveau2 \
        libdrm-radeon1 \
        libdrm2 \
        libedit2 \
        libelf1 \
        libexpat1 \
        libexpat1-dev \
        libffi-dev \
        libffi6 \
        libfile-stripnondeterminism-perl \
        libfontconfig1 \
        libfontconfig1-dev \
        libfontenc1 \
        libfreetype6 \
        libfreetype6-dev \
        libgcc-6-dev \
        libgdbm-dev \
        libgdbm3 \
        libgl1-mesa-dri \
        libgl1-mesa-glx \
        libglapi-mesa \
        libglib2.0-0 \
        libgmp10 \
        libgomp1 \
        libgpm2 \
        libice-dev \
        libice6 \
        libicu57 \
        libisl15 \
        libitm1 \
        libjs-jquery \
        libjs-sphinxdoc \
        libjs-underscore \
        libllvm3.8 \
        liblsan0 \
        liblzma-dev \
        libmagic1 \
        libmpc3 \
        libmpdec-dev \
        libmpdec2 \
        libmpfr4 \
        libmpx2 \
        libncursesw5-dev \
        libpciaccess0 \
        libperl5.22 \
        libpipeline1 \
        libpixman-1-0 \
        libpng-dev \
        libpng16-16 \
        libpthread-stubs0-dev \
        libpython3-stdlib \
        libpython3.5-minimal \
        libpython3.5-stdlib \
        libquadmath0 \
        libreadline-dev \
        libsigsegv2 \
        libsm-dev \
        libsm6 \
        libsqlite3-dev \
        libssl-dev \
        libssl1.0.0 \
        libstdc++-6-dev \
        libtcl8.6 \
        libtimedate-perl \
        libtinfo-dev \
        libtk8.6 \
        libtool \
        libtsan0 \
        libubsan0 \
        libunistring0 \
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
        libxfont1 \
        libxft-dev \
        libxft2 \
        libxkbfile1 \
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
        lsb-release \
        m4 \
        make \
        man-db \
        mime-support \
        net-tools \
        netbase \
        patch \
        perl \
        perl-modules-5.22 \
        pkg-config \
        po-debconf \
        python-babel-localedata \
        python3 \
        python3-alabaster \
        python3-babel \
        python3-docutils \
        python3-imagesize \
        python3-jinja2 \
        python3-markupsafe \
        python3-minimal \
        python3-pkg-resources \
        python3-pygments \
        python3-roman \
        python3-six \
        python3-sphinx \
        python3-tz \
        python3.5 \
        python3.5-minimal \
        quilt \
        sgml-base \
        sharutils \
        sphinx-common \
        tcl \
        tcl-dev \
        tcl8.6 \
        tcl8.6-dev \
        time \
        tk \
        tk-dev \
        tk8.6 \
        tk8.6-blt2.5 \
        tk8.6-dev \
        ucf \
        x11-common \
        x11-xkb-utils \
        x11proto-core-dev \
        x11proto-input-dev \
        x11proto-kb-dev \
        x11proto-render-dev \
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
