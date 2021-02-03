pkgname=wziumfecz-git
pkgver=r8.27f8ab3
pkgrel=1
pkgdesc="Just like neofetch but better!"
arch=('any')
provides=('wziumfecz')
url="https://workonfi.re"
license=('WTFPL')
source=("${pkgname}"::git+https://github.com/workonfire/wziumfecz.git)
sha256sums=('SKIP')

pkgver() {
  cd "$pkgname"
  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
    echo -e "\033[0;34m:: \033[0mWziumowanie skryptu instalacyjnego..."
    install -Dm755 "${srcdir}"/"${pkgname}"/wziumfecz.sh "${pkgdir}"/usr/bin/wziumfecz
    install -Dm644 "${srcdir}"/"${pkgname}"/LICENSE "${pkgdir}"/usr/share/licenses/"${pkgname}"/LICENSE
    echo -e "\033[1;32m:: \033[0mZwziumowano pomyślnie."
}
