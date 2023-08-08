#!/bin/bash

#------------------
#   iTalogc iOS
#------------------

sudo apt-get -qy update > /dev/null

clear

echo "================================"
echo " Bem Vindo ao Auto-Palera1n 2.0!"
echo "================================"

echo -e "\033[0;37m[*] instalando dependências (pode demorar um pouco)..."

sudo apt-get install -qy git \
                  gcc \
		  bash \
                  wget \
                  python3-pip \
                  libavahi-client-dev \
                  libusb-1.0-0 \
                  libusb-1.0-0-dev \
                  libadolc2 \
                  libusbmuxd-tools \
                  libtool \
                  usbmuxd \
                  libtool-bin \
                  autoconf \
                  automake \
                  libimobiledevice* \
                  make \
		  libssl-dev \
                  libssl3 \
		  unzip \
		  curl \
                  cmake -y >/dev/null

pip install pyimg4 --quiet > /dev/null 2>&1

wget https://github.com/CoocooFroggy/FutureRestore-GUI/releases/download/v1.98.2/FutureRestore-GUI-Debian-1.98.2.deb -q && \
													sudo dpkg -i FutureRestore-GUI-Debian-1.98.2.deb >/dev/null && \
													sudo rm -rf FutureRestore-GUI-Debian-1.98.2.deb

echo "[*] Baixando LibGeneral..."
git clone https://github.com/tihmstar/libgeneral --quiet && \
					  cd libgeneral/
echo "[+] LibGeneral Baixado com Sucesso!"
printf "\n[*] Compilando LIBGENERAL...\n\n"
sudo ./autogen.sh >/dev/null 2>&1 && \
	sudo make -s >/dev/null 2>&1 && \
	sudo make install -s

cd .. && rm -rf libgeneral/

clear

echo "================================"
echo " Bem Vindo ao Auto-Palera1n 2.0!"
echo "================================"

printf "\n A instalar dependências do LibiMobileDevice...\n"
sudo git clone --recursive https://github.com/libimobiledevice/libimobiledevice.git
cd libimobiledevice
echo "[+] LibiMobileDevice Baixado com Sucesso!"
printf "\n[*] Compilando LibiMobileDevice...\n\n"
sudo ./autogen.sh >/dev/null 2>&1 && \
sudo make -s >/dev/null 2>&1 && \
sudo make install -s
sudo ./autogen.sh --prefix=/opt/local --enable-debug >/dev/null 2>&1 && \
sudo ./autogen.sh --with-gnutls >/dev/null 2>&1 && \
sudo ./autogen.sh --with-mbedtls mbedtls_INCLUDES=/opt/local/include mbedtls_LIBDIR=/opt/local/lib >/dev/null 2>&1 && \
printf "\n Dependências do LibiMobileDevice instaladas com sucesso!\n"

cd .. && rm -rf libimobiledevice


clear

echo "================================"
echo " Bem Vindo ao Auto-Palera1n 2.0!"
echo "================================"

echo "[*] Baixando usbmuxd2..."
git clone https://github.com/tihmstar/usbmuxd2 --quiet && \
						cd usbmuxd2

printf "\n[*] Compilando usbmuxd2...\n"
sudo ./autogen.sh >/dev/null 2>&1 && \
		make -s >/dev/null 2>&1  && \
		make install -s >/dev/null 2>&1

printf "\n[+] usbmuxd2 compilado com sucesso!"
printf "\n[+] todas dependências instaladas com êxito!\n\n"
echo "[*] Desativando serviços do usbmuxd2 ..."
systemctl stop usbmuxd >/dev/null
echo "[+] Serviço parado com sucesso!"

cd .. && rm -rf usbmuxd2

cd ..

echo -e "\n[*] Fazendo Download do Palera1n Jailbreak... (Pode demorar um pouco)\n"
sudo git clone --recursive https://github.com/palera1n/palera1n -b legacy --quiet
echo "[+] Palera1n Jailbreak Legacy Baixado com Sucesso!"

echo -e "\n[*] Fazendo Download do Palera1n3.0 Jailbreak de iTalogc iOS... (Pode demorar um pouco)\n"
sudo git clone --recursive https://github.com/Italogc/palera1n-3.0 --quiet
echo "[+] Palera1n-3.0 de iTalogc iOS Baixado com Sucesso!"

cd ..

clear

echo "======================================="
echo " Obrigado por usar o Auto-Palera1n 2.0!"
echo "======================================="

echo "[*] Iniciando usbmuxd2..."
sudo /sbin/usbmuxd -f -p &>/dev/null 2>&1 &
echo "[+] Serviço usbmuxd2 Iniciado!"

printf "\033[1;37mDe agora em diante use esses commandos em novo terminal:\n"
printf "\033[1;37mTroque XX.X.X pela versão exata do iOS no seu aparelho\n"
printf "\n\033[0;32mcd palera1n\n"
printf "\033[0;32msudo ./palera1n.sh --tweaks XX.X.X\n\n"

