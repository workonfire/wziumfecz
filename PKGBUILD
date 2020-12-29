pkgname=wziumfecz
pkgver=1.0.0
pkgrel=1
pkgdesc="Just like neofetch but better!"
arch=('any')
url="https://workonfi.re"
license=('WTFPL')
source=("${pkgname}".sh::https://raw.githubusercontent.com/workonfire/wziumfecz/master/"$pkgname".sh)
sha256sums=('8bf435723f3f5782c02b9b25188d2f9ddbf442798eaac9f5505abc04c23e8e29')

package() {
    plain "\033[0;34m:: \033[0mWziumowanie skryptu instalacyjnego..."
    install -Dm755 "${srcdir}"/wziumfecz.sh "${pkgdir}"/usr/bin/wziumfecz
    msg2 "Zainstalowano wziumfecz'a w: \033[1;36mpakiet Arch Linux'a"
    plain "\033[1;32m:: \033[0mZwziumowano pomyślnie."
}
