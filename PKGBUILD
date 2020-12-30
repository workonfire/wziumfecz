pkgname=wziumfecz
pkgver=1.0.0
pkgrel=1
pkgdesc="Just like neofetch but better!"
arch=('any')
url="https://workonfi.re"
license=('WTFPL')
source=("${pkgname}".sh::https://raw.githubusercontent.com/workonfire/"${pkgname}"/master/"${pkgname}".sh
        LICENSE::https://raw.githubusercontent.com/workonfire/"${pkgname}"/master/LICENSE)
<<<<<<< HEAD
sha256sums=('c19a4bf7c4093a7b64a9d91f21787ff9481e8db93af530219df6edc4ac4c3161'
=======
sha256sums=('14b24b9b071b5565f914d6c0302162ebf37b8f5a0ec56495ee59fedd3d47264d'
>>>>>>> upstream/main
            '7637386b5f81e8a719ca336233149005e5fa28b5e6054ea7b67de49355b0ad40')

package() {
    plain "\033[0;34m:: \033[0mWziumowanie skryptu instalacyjnego..."
    install -Dm755 "${srcdir}"/wziumfecz.sh "${pkgdir}"/usr/bin/wziumfecz
    install -Dm644 "${srcdir}"/LICENSE "${pkgdir}"/usr/share/licenses/"${pkgname}"/LICENSE
    msg2 "Zainstalowano wziumfecz'a w: \033[1;36mpakiet Arch Linux'a"
    plain "\033[1;32m:: \033[0mZwziumowano pomyślnie."
}
