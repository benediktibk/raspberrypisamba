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

inherit eutils

src_prepare() {
	epatch "${FILESDIR}"/cast_001.patch
	epatch "${FILESDIR}"/chmod_001.patch
	epatch "${FILESDIR}"/exception_001.patch
	epatch "${FILESDIR}"/exception_002.patch
	epatch "${FILESDIR}"/exception_003.patch
	epatch "${FILESDIR}"/exception_004.patch
	epatch "${FILESDIR}"/exception_005.patch
	epatch "${FILESDIR}"/exception_006.patch
	epatch "${FILESDIR}"/exception_007.patch
	epatch "${FILESDIR}"/exception_008.patch
	epatch "${FILESDIR}"/exception_009.patch
	epatch "${FILESDIR}"/exception_010.patch
	epatch "${FILESDIR}"/exception_011.patch
	epatch "${FILESDIR}"/exception_012.patch
	epatch "${FILESDIR}"/indentation_001.patch
	epatch "${FILESDIR}"/print_001.patch
	epatch "${FILESDIR}"/xrange_001.patch
}
