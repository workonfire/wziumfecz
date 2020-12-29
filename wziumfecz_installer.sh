#!/bin/bash

# wziumfecz installer
# dla ludzi żyjących w biedzie bez Arcz Linuksa

install_path="$HOME"
file_name="wziumfecz"
script_name="$file_name.sh"
file_path="$install_path/$script_name"

install() {
    echo -e "\033[0;34m:: \033[0mWziumowanie skryptu instalacyjnego..."
    sleep 1 # dla realizmu
    cp $script_name $file_path
    cd $install_path
    chmod +x $script_name
    sudo ln -s $file_path /usr/bin/$file_name
    echo -e "Zainstalowano wziumfecz'a w: \033[1;36m$(whereis $file_name)"
    echo -e "\033[1;32m:: \033[0mZwziumowano pomyślnie."
}

echo "Instalowanie wziumfecz'a..."
sleep 1
install

