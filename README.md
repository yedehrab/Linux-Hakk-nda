# Linux Hakkında

Kendime bir başlangıç rehberi kurma adına oluşturduğum bu listeyi internette paylaşmaya karar verdim, belki faydalı olur :)

## Depolar

- `/etc/apt/sources.list/` Resmi depolar
- `/etc/apt/sources.list.d/` dizininde uygulama depoları saklanır.
- `thunar` komutu ile dosya gezginleri ile açabilirsin. (*thunar pardus içindir*)

## Temel Komutlar

Detalar için [buraya](https://gist.github.com/sayz/1130312/a45b548b82ee459e05a9159ec532224757a2ca56) tıklayarak, açıklamalara ulaşabilirsin.

- `clear` Terminali temizleme
- `sudo -s ` Terminali root yapma `exit` rootlu terminali kapatma
- `sudo apt-get purge paketadi` paketadi paketini kaldirma
- `sudo apt-get purge paket*` Bulunan dizinde paket ile başlayan tüm paketleri kaldırma
- `sudo apt-get purge 'paket*'` paket ile başlayan tüm paketleri ve alt bileşenlerini kaldırma
- `sudo apt-cache search paketadi` Depoda paketadi arama işlemi


### Dpkg - Debian Paket Kurma

- `sudo dpkq -i deb_uzantılı.deb`
- `sudo apt-get install --fix-broken` (kurulum için gerekli paketleri kurma)
- `sudo apt-get autoremove` (gereksizleri kaldırma)


### Tar dosyalarının kurulumlaır

Tar.gz uzantılı dosyayı bulup, sağ tıklayıp, buraya çıkar diyoruz. Ya da terminal yardımıyla arşivi çıkarın

```bash
tar xzf dosya.tar.gz -C ./dizin
cd dizin
```

> Terminat komutlarını kullandıysanız, direk alttaki komutları uygulayabilirisiniz.

Ardından çıkarılan dosyaların olduğu dizine girip, alttaki komutları yazıyoruz.


```bash
$ ./configure
$ make -j $(nproc --all)
$ sudo make install
```

## Çekirdek (Kernel) Güncelleme

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

## Pardus Ayarları

> Pardus **DDE**'yi kesimlikle tavsiye ederim, görsel alanda çok iyidir. Bu alttaki ayarlar **XFCE** içindir.

Pardus için gerekli bulduğum birkaç ayara yer vereyim

### Pencerelerdeki İçerikleri Kaydırırken Odağın Değişmesi

Ayarlar

Pencere Yöneticisi İnce Ayarlar

Erişilebilirlik sekmesi

Herhangi bir fare tuşuna basıldığında pencereleri yükselt

### Alt panel boyutu

Panel'e sağ tıklayın 

Panel - Panel Tercihleri

Görüntüle - Ölçümler alanında **Satır Boyutu** 29-33 arası bir değer yapabilirsiniz.

Öğeler Kısmından da panel öğelerinin sıralarını ayarlayabilirsin.

### Del - Backspace Tuşlarına Basınca Çıkan Bip Sesi

Alttaki komut ile çıkan sesleri kapatabilirsin.

```bash
xset b off
```

## Programlar

Severek kullandığım bir kaç program :)
  
### Opera
[Buraya](https://www.opera.com/tr) tıklayarak Opera'nın son sürümünü indirmelisin.

Ardından indirdiğin dizinde terminali açarak alttaki komutları yazmalısın;

```bash
sudo apt-get install libcurl3
sudo dpkg -i opera-stable_56.0.3051.52_amd64.deb
```

Artık terminale alttaki komutu yazarak operayı açabilirsin :)

```bash
opera
```

#### Adobe Flash Player kurulumu

[Buraya](https://get.adobe.com/tr/flashplayer/otherversions/) tıklayarak Adobe Flash Player'i **altta verilen ayarlarla** indirmeilisin.

İşletim sistemi: Linux (x64) 

Sürüm: FP 31.0 for Linux 64-bit (.tar.gz)- PPAPI

İndirdikten sonra, **flash_player_ppapi_linux.x86_64** üzerine sağ tıklayıp buraya çıkar demelisin.

Ayıklama işleminden sonra oluşan dizinin içine girip, **sağ tıklayıp burada terminal** aç demelisin.

Ardından alttaki komutları yazmalısın;
```bash
sudo mkdir /usr/lib/adobe-flashplugin/
sudo cp -r * /usr/lib/adobe-flashplugin/
```

#### Opera özelliklerini aktif etme

Opera tarayıcısında iken **ALT** tuşuna basın ve **Ayarlar** menüsüne girin.

Reklamları engelle kısmını aktif edin

Sağ üst kısımdaki filtre yerine, **VPN** yazın ve isteğe bağlı VPN özelliğini aktif edin.

Not: VPN bir kez aktif edildikten sonra, adres çubuğunun solun ufak bir kontrol düğmesi oluşacaktır.

### Firefox-ESR'yi kaldırma 

Alttaki komutları yazmanız yeterlidir. Tüm alakalı dosyalar silinecektir.

```bash
sudo apt-get purge firefox
sudo apt autoremove
```

### ThunderBird'i kaldırma 

Alttaki komutları yazmanız yeterlidir. Tüm alakalı dosyalar silinecektir.

```bash
sudo apt-get purge thuderbird
sudo apt autoremove
```

---

### LibreOffice Kurma

İlk olarak eski LibreOffice'i kaldırmamız gerekmekte.

```bash
sudo apt-get remove 'libreoffice*'
```

Ardından [buraya](https://tr.libreoffice.org/indir/libreoffice-taze-surum/?type=deb-x86_64) tıklayarak LibreOffice indirme sayfasından **Linux x64 (deb)** için indirin.

İndirme işlemi tamamlandıktan sonra, indirdiğiniz dizine girip, sağ tıklayın **Burada Termianl Aç** yazısına tıklayın.

```bash
cd DEBS
sudo dpkg -i *.deb
```

### VS Code
[Buraya](https://code.visualstudio.com/download) tıklayarak VS Code indirme sayfasından **.deb x64** adlı linke tıklayın.

İndirme işlemi tamamlandıktan sonra, indirdiğiniz dizine girip, sağ tıklayın **Burada Termianl Aç** yazısına tıklayın.

```bash
sudo apt-get install libgconf-2-4
sudo apt --fix-broken install
sudo apt autoremove 
sudo dpkg -i code_1.28.2-1539735992_amd64.deb 
```

Artık terminale alttaki komutu yazarak VS Code'u açabilirsin :)

```bash
code [dizin / dosya]
```

#### VS Code Özelleştirme

Menu - File - Preferences - Settings

Arama yerinenin sağ altındaki **...** işaretine basın

Open Settings JSON


Açılan ekrana şunları kopyalayın ve gerekli olanları **Extensions** alanından indirin

```JSON
{
    "window.menuBarVisibility": "toggle",
    "workbench.iconTheme": "material-icon-theme",
    "workbench.colorTheme": "Base16 Tomorrow Dark",
    "editor.fontWeight": "500",
    "editor.fontSize": 13.7,
    "window.titleBarStyle": "custom",
}
```
> OpenCv'de cv2 ile alakalı gereksiz hataları kapatmak için

```JSON
{
    "python.linting.pylintArgs": [
        "--extension-pkg-whitelist=cv2"
    ]
}
```


#### Vs Code'un Thunar'ın yerini alma sorunu

Tarayıcı üzerinden "Bulunduğu klasörü aç" dendiğinde thunar yerine vscode ile açılma sorunu çözümü

https://github.com/Microsoft/vscode/issues/44344

### Git

Git kurulumu çok kolaydır. Alttaki komutu yazmanız yeterlidir.

``` bash
sudo apt-get install git
```

### Node.js

Node kurmak için alttaki komutları yazmanız yeterlidir.

```bash
wget -qO- https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt-get install -y nodejs
```

> `wget -q0-` komutu `/etc/apt/sources.list.d/`  dizinine node deposunu ekliyor

### Anaconda

**Eski python sürümleri kaldırılmak zorunda değildir!**. İsteğe bağlıdır.

#### Eski Python sürümlerini kaldırmak

Tüm pythonları ve bağımlılıklarını kaldırma ve ardında bıraktıklarını temizlemek için alttaki komutları girin

```bash
sudo apt-get purge 'python*'
sudo apt-get autoremove
```

#### Anaconda kurulumu

[Buraya](https://www.anaconda.com/download/#linux) tıklayarak Anaconda3 dosyasını **linux** için indirin.

Orjinal sitesindeki yönergeleri takip etmek için [buraya](http://docs.anaconda.com/anaconda/install/linux/) tıklayabilirsin.

Adım adım alttaki işlemleri yapın;

* `sha256sum /yol/dosyaismi` Paketin doğruluğunu kontrol etme
* `bash ~/İndirilenler/Anaconda3-*.sh` İndirme scriptini başlatma
* `yes` yazarak koşulları kabul ediyoruz
* `/home/<user>/anaconda3` ile indirileceği konumu özelleştirebiliriz

> Not sistem yollarına eklerseniz `~/.bashrc` adlı dosyaya anaconda veri yazacaktır ve bu veri terminalin 1sn gecikme ile yüklenmesine sebeb olacaktır. Bunun yerine `no` deyip, [buraya](Bilgiler/LinuxPath.md) tıklayarak elden eklemeneniz terminal hızını etkilemeyecektir. (hissettirmeyecek)

* `yes` ile anacondayı sistem yollarına ekliyoruz. (*İsteğe bağlı*) 
* `source ~/.bashrc` İşlemler bittiğinde yazılacak komut.
* `anaconda-navigator` ile yüklenen anaconda uygulamasını açabiliriz

> Eğer komut bulunamadı hatası alıyorsan, [buraya](Bilgiler/LinuxPath.md)  tıklayarak PATH'e ekleyin

tıklayarak nasıl yapacağını öğrenebilirsin :)

#### Python Pip ile OpenCV Kurulum

```bash
pip install --upgrade pip
pip install twisted
python -m pip install opencv-python
```


#### Anaconda3 ile openCV kurulumu

> Not: Bu sistem cv2.imshow(...) da hata vermektedir. GUI'lerde sorun oluşturabilmekte.

Aşağıdaki komut yardımı ile condo üzerinden opencv ve gereksinimlerini indirebilirsiniz;

```bash
conda install -c conda-forge opencv
```

> Çıkan ekranda `y` yazmanız gerekmekte


Kaynaklar:
https://www.scivision.co/install-opencv-python-windows/








