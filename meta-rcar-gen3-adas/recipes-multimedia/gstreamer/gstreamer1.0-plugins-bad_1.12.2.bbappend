FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

DEPENDS_remove = "weston"

SRC_URI_append = " \
    file://0001-install-wayland.h-header.patch \
    file://0002-pkgconfig-libgstwayland.patch \
    file://0003-gstkmssink-add-rcar-du-to-driver-list.patch \
"

RDEPENDS_${PN}_remove = "libwayland-egl"

PACKAGECONFIG_append = " kms"
