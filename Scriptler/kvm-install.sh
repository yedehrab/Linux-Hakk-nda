# Android için KVM Kurulumu - Ubuntu Cosmic
# Yunus Emre Ak 
# Original Link: https://help.ubuntu.com/community/KVM/Installation

echo -e '\n--------------------\nKVM desteği kontrol ediliyor. (0 değilse uygun)\n--------------------\n'
egrep -c '(vmx|svm)' /proc/cpuinfo

echo -e '\n--------------------\nCPU-Checker kurulumu\n--------------------\n'
sudo apt install cpu-checker

echo -e '\n--------------------\nSistem mimarisi kontrol ediliyor. (0 değilse x64)\n--------------------\n'
egrep -c ' lm ' /proc/cpuinfo

echo -e '\n--------------------\nSistem mimarisini yazma (x86_64 ise 64 bit)\n--------------------\n'
uname -m

echo -e '\n--------------------\nKVM kurulumu (Cosmic için)\n--------------------\n'
sudo apt-get install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils

echo -e '\n--------------------\nYükleme kontrol ediliyor.\n--------------------\n'
virsh list --all

echo -e '\n--------------------\nSock file izinleri kontrolü\n--------------------\n'
sudo ls -la /var/run/libvirt/libvirt-sock

echo -e '\n--------------------\nKVM kurulum kontrolü\n--------------------\n'
ls -l /dev/kvm

