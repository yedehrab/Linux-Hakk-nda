
# Kernel (Çekirdek) Güncelleme

Alıntıladığım link için [buraya](https://www.cyberciti.biz/tips/compiling-linux-kernel-26.html) tıklayabilirsin.

Komut yazmakla uğraşmayıp, [**buraya**](https://drive.google.com/open?id=10Lq531EDpHFLuzLJiSxaumI-oZCM3YiG) tıklayarak yükleme scriptini indirebilir ve `bash kernel-install.sh` komutu ile hızlıca kurabilirsin.

Son çekirdek sürümünü indiriyoruz

```bash
wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.tar.xz
```

> Eğer son sürüm 4.19 değilse, 4.19 yazan her yere son sürümün versiyonunu yazın. (4.20)

Çekirdek dosyalarını çıkartıyoruz

```bash
xz -d -v linux-4.19.tar.xz
``` 

Çekirdek dosyalarının dizine girip, sistem yapılandırma dosyasını bu dizine kopyalıyoruz

```bash
cd linux-4.19
$ cp -v /boot/config-$(uname -r) .config
```

Gerekli olan paketlerin kurulumunu yapıyoruz

```bash
sudo apt-get install build-essential libncurses-dev bison flex libssl-dev libelf-dev
```

Çekirdeği tüm işlemci çekirdeklerini kullanarak derleme (çekirdek hızı arttıracaktır)

```bash
make 0=/home/$USER/build/kernel -j $(nproc)
```
> `0=...` komutu ile derlenme dizini "/home/kullanıcı_adi/build/kernel dizini olacaktır. İstemiyorsanız değiştirebilir veya silebilirsiniz. 


Çekirdek modüllerini yükleme

```bash
sudo make 0=/home/$USER/build/kernel modules_install
```

Linux çekirdeğini yükleme

```bash
sudo make 0=/home/$USER/build/kernel install
```

Grub yapılandırmayı güncelleme

```bash
sudo update-initramfs -c -k 4.19
sudo update-grub
```

Sistemi yeniden başlatma

```bash
reboot
```

Sistemin çekirdek sürümünü gösterme

```bash
uname -mrs
```