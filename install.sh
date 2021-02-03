#!/bin/bash

# wziumfecz installer

os=$(source /etc/os-release; echo $NAME)
file_name="wziumfecz"
        
install_arch() {
    if ! pacman -Qg base-devel &> /dev/null
        then
            sudo pacman -S base-devel
    fi
    mkdir ${file_name}-workdir
    cd ${file_name}-workdir
    curl https://raw.githubusercontent.com/workonfire/wziumfecz/main/PKGBUILD > PKGBUILD
    makepkg -si
    cd ..
    rm -rf ${file_name}-workdir
}

install() {
    install_path="$HOME"
    script_name="$file_name.sh"
    file_path="$install_path/$script_name"
    
    git clone https://github.com/workonfire/${file_name}.git
    cd $file_name
    echo -e "\033[0;34m:: \033[0mWziumowanie skryptu instalacyjnego..."
    cp $script_name $file_path
    cd $install_path
    chmod +x $script_name
    sudo ln -s $file_path /usr/bin/$file_name
    echo -e "Zainstalowano wziumfecz'a w: \033[1;36m$(which $file_name)"
    echo -e "\033[1;32m:: \033[0mZwziumowano pomyślnie."
}

if [ "$os" == "Arch Linux" ]
    then
        install_arch
    else
        echo "Instalowanie wziumfecz'a..."
        install
fi
