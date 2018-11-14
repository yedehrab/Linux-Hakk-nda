# Programlar

Severek kullandığım bir kaç program :)
  
## Opera
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

### Adobe Flash Player kurulumu

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

### Opera özelliklerini aktif etme

Opera tarayıcısında iken **ALT** tuşuna basın ve **Ayarlar** menüsüne girin.

Reklamları engelle kısmını aktif edin

Sağ üst kısımdaki filtre yerine, **VPN** yazın ve isteğe bağlı VPN özelliğini aktif edin.

Not: VPN bir kez aktif edildikten sonra, adres çubuğunun solun ufak bir kontrol düğmesi oluşacaktır.

## Firefox-ESR'yi kaldırma 

Alttaki komutları yazmanız yeterlidir. Tüm alakalı dosyalar silinecektir.

```bash
sudo apt-get purge firefox
sudo apt autoremove
```

## ThunderBird'i kaldırma 

Alttaki komutları yazmanız yeterlidir. Tüm alakalı dosyalar silinecektir.

```bash
sudo apt-get purge thuderbird
sudo apt autoremove
```

---

## LibreOffice Kurma

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

## VS Code
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

### VS Code Özelleştirme

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


### Vs Code'un Thunar'ın yerini alma sorunu

Tarayıcı üzerinden "Bulunduğu klasörü aç" dendiğinde thunar yerine vscode ile açılma sorunu çözümü

https://github.com/Microsoft/vscode/issues/44344

## Git

Git kurulumu çok kolaydır. Alttaki komutu yazmanız yeterlidir.

``` bash
sudo apt-get install git
```

## Node.js

Node kurmak için alttaki komutları yazmanız yeterlidir.

```bash
wget -qO- https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt-get install -y nodejs
```

> `wget -q0-` komutu `/etc/apt/sources.list.d/`  dizinine node deposunu ekliyor

## Python Kurulumu

Gerekli paketlerin yüklenmesi

```bash
sudo apt-get install build-essential zlib1g-dev libffi-dev
```

> Not kuruluma başlamadan önce klasörü istediğiniz dizine taşıyın.

Python'un Kurulumu

```bash
 ./configure
    make -j $(nproc)
    make -j $(nproc) test
    sudo make -j $(nproc) install
```

## Anaconda

**Eski python sürümleri kaldırılmak zorunda değildir!**. *Tavsiye edilmez*.

### Eski Python sürümlerini kaldırmak

Tüm pythonları ve bağımlılıklarını kaldırma ve ardında bıraktıklarını temizlemek için alttaki komutları girin

```bash
sudo apt-get purge 'python*'
sudo apt-get autoremove
```

### Anaconda kurulumu

[Buraya](https://www.anaconda.com/download/#linux) tıklayarak Anaconda3 dosyasını **linux** için indirin.

Orjinal sitesindeki yönergeleri takip etmek için [buraya](http://docs.anaconda.com/anaconda/install/linux/) tıklayabilirsin.

Adım adım alttaki işlemleri yapın;

* `sha256sum /yol/dosyaismi` Paketin doğruluğunu kontrol etme
* `bash ~/İndirilenler/Anaconda3-*.sh` İndirme scriptini başlatma
* `yes` yazarak koşulları kabul ediyoruz
* `/home/<user>/anaconda3` ile indirileceği konumu özelleştirebiliriz

> Not sistem yollarına eklerseniz `~/.bashrc` adlı dosyaya anaconda veri yazacaktır ve bu veri terminalin 1sn gecikme ile yüklenmesine sebeb olacaktır. Bunun yerine `no` deyip, [buraya](./Linux_Path.md) tıklayarak elden eklemeneniz terminal hızını etkilemeyecektir. (hissettirmeyecek)

* `yes` ile anacondayı sistem yollarına ekliyoruz. (*İsteğe bağlı*) 
* `source ~/.bashrc` İşlemler bittiğinde yazılacak komut.
* `anaconda-navigator` ile yüklenen anaconda uygulamasını açabiliriz

> Eğer komut bulunamadı hatası alıyorsan, [buraya](./Linux_Path.md)  tıklayarak PATH'e ekleyin

tıklayarak nasıl yapacağını öğrenebilirsin :)

### Pip ile OpenCV Kurulum

```bash
pip install --upgrade pip
pip install opencv-contrib-python
```

> Alttaki komutlar **alternatiftir**

```bash
pip install --upgrade pip
pip install twisted
python -m pip install opencv-python
```


### Anaconda3 ile openCV kurulumu

> Not: Bu sistem cv2.imshow(...) da hata vermektedir. GUI'lerde sorun oluşturabilmekte.

Aşağıdaki komut yardımı ile condo üzerinden opencv ve gereksinimlerini indirebilirsiniz;

```bash
conda install -c conda-forge opencv
```

> Çıkan ekranda `y` yazmanız gerekmekte


### Anaconda3 ile tensorflow kurulumu

> *ModuleNotFoundError: No module named 'tensorflow'* hatası için idealdir.

```bash
conda install -c conda-forge tensorflow
```

### Pip ile tensorflow kurulumu

```bash
pip install tensorflow
```

> Eğer üstteki komuttta "*Could not find a version that satisfies the requirement tensorflow (from versions: )
> No matching distribution found for tensorflow*" şeklinde hata alıyorsanız [buraya](https://stackoverflow.com/questions/38896424/tensorflow-not-found-using-pip) veya [buraya](https://github.com/keras-team/keras/issues/6545) bakmanda fayda var.


### Pip ile Keras Kurulumu

Keras neural network (sinir ağları) üzerine işlemler yapacak olan kişiler için ideal bir yazılımdır.

> Not: Öncelikle tensorflow indirilmelidir.

```bash
pip install keras
```


## MySQL Kurulumu

MySQL çok sık kullanılanan SQL Database uygulamasıdır.

> [Buraya](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-16-04) tıklayarak öğrenebilirsin.
