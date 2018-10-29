# Son çekirdek sürümünü indirme
wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.tar.xz

# Çekirdek dosyalarını çıkartma
xz -d -v linux-4.19.tar.xz

# Çekirdek dosyalarının dizinine girme
cd linux-4.19

# Yapılandırma dosyasını oluşturma
cp -v /boot/config-$(uname -r) .config

# Gerekli yazılımları kurma
sudo apt-get install build-essential libncurses-dev bison flex libssl-dev libelf-dev

## 0=/home/$USER/build/kernel dizinine yüklenir ve derlenir

# TÜm çekirdekleri kullanarak derleme
make 0=/home/$USER/build/kernel -j $(nproc)

# Modulleri yükleme
sudo make 0=/home/$USER/build/kernel modules_install

# Yükleme
sudo make 0=/home/$USER/build/kernel install

# Boot ayarları yenileme
sudo update-initramfs -c -k 4.19

# Grub menüyü güncelleme
sudo update-grub