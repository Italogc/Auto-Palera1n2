#!/bin/bash

#------------------
#   By John
#------------------

clear

echo "====================================="
echo " Welcome to Auto-Palera1n IMPROVED!"
echo "====================================="

echo -e "\033[0;37m[*] installing dependencies (may take some time)..."

sudo apt-get -qy update > /dev/null

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

echo "[*] Downloading LibGeneral..."
git clone https://github.com/tihmstar/libgeneral --quiet && \
					  cd libgeneral/
echo "[+] LibGeneral downloaded!"
printf "\n[*] Compiling LIBGENERAL...\n\n"
sudo ./autogen.sh >/dev/null 2>&1 && \
	sudo make -s >/dev/null 2>&1 && \
	sudo make install -s

cd .. && rm -rf libgeneral/

clear

echo "[*] Downloading usbmuxd2..."
git clone https://github.com/tihmstar/usbmuxd2 --quiet && \
						cd usbmuxd2

printf "\n[*] Compiling usbmux2...\n"
sudo ./autogen.sh >/dev/null 2>&1 && \
		make -s >/dev/null 2>&1  && \
		make install -s >/dev/null 2>&1

printf "\n[+] Usbmux2 compiled!"
printf "\n[+] installed dependencies!\n\n"
echo "[*] Exiting usbmux service..."
systemctl stop usbmuxd >/dev/null
echo "[+] Stopped service!"

cd .. && rm -rf usbmuxd2

echo -e "\n[*] Downloading Palera1n Jailbreak... (may take some time)\n"
git clone --recursive https://github.com/palera1n/palera1n --quiet
echo "[+] Palera1n Downloaded!"

printf "\033[1;37mTye these commands:\n"
printf "\n\033[0;32mcd palera1n\n"
printf "\033[0;32msudo ./palera1n.sh --tweaks $1\n\n"

echo "[*] Starting usbmux2..."
sudo /sbin/usbmuxd -f -p &>/dev/null 2>&1 &
echo "[+] Usbmux2 started!"
