pkgname=wziumfecz
pkgver=1.0.0
pkgrel=1
pkgdesc="Just like neofetch but better!"
arch=('any')
url="https://workonfi.re"
license=('WTFPL')
source=("${pkgname}".sh::https://raw.githubusercontent.com/workonfire/wziumfecz/master/"$pkgname".sh)
sha256sums=('cbe14c6ca69a5efe93e3050a47e4005aa7044d0ffe404fdcecf087b596aef716')

package() {
    plain "\033[0;34m:: \033[0mWziumowanie skryptu instalacyjnego..."
    install -Dm755 "${srcdir}"/wziumfecz.sh "${pkgdir}"/usr/bin/wziumfecz
    msg2 "Zainstalowano wziumfecz'a w: \033[1;36mpakiet Arch Linux'a"
    plain "\033[1;32m:: \033[0mZwziumowano pomyślnie."
}
