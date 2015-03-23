# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5" 
SLOT="0"
 
DESCRIPTION="Samba server"
HOMEPAGE="http://www.samba.org"
SRC_URI="https://download.samba.org/pub/samba/samba-4.2.0.tar.gz"
 
LICENSE="GPL"
KEYWORDS="~amd64 ~arm"
PYTHON_DEPEND="2"

CDEPEND="net-libs/gnutls
	net-nds/openldap"
DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"

inherit eutils python

src_prepare() {
	epatch "${FILESDIR}"/${P}.patch
}

src_configure() {
	econf --enable-fhs
}

pkg_setup() {
	python_set_active_version 2
	python_pkg_setup
}
