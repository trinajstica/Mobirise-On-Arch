pkgname=mobirise-beta
pkgver=last
pkgrel=1
pkgdesc="Create awesome mobile-friendly websites! No coding and free."
arch=('x86_64')
url="https://mobirise.com"
license=('Free')
options=('!strip' '!emptydirs')
source=("https://download.mobirise.com/beta/mobirise5beta-setup.deb")
sha512sums=('SKIP')

package(){
	tar xf data.tar.xz -C "${pkgdir}"
}

post_install() {
	gtk-update-icon-cache -q -t -f usr/share/icons/hicolor
	ln -sf '/opt/Mobirise/mobirise' '/usr/bin/mobirise'
	chmod 4755 '/opt/Mobirise/chrome-sandbox' || true
	update-mime-database /usr/share/mime || true
	update-desktop-database /usr/share/applications || true
	update-desktop-database -q
}

post_upgrade() {
	post_install
}

post_remove() {
	gtk-update-icon-cache -q -t -f usr/share/icons/hicolor
	rm -f '/usr/bin/mobirise'
	update-desktop-database -q
}

