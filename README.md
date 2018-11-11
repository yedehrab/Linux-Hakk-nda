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

## Kernel (Çekirdek) Güncelleme

Kernel güncelleme hakkında yazdığım yazı için [buraya](Bilgiler/Kernel_Güncelleme.md) tıklayabilirsin.

## Pardus Ayarları

> Pardus **DDE**'yi kesimlikle tavsiye ederim, görsel alanda çok iyidir. Bu alttaki ayarlar **XFCE** içindir.

Pardus için gerekli bulduğum birkaç ayara için [buraya](Bilgiler/Pardus_XFCE_Ayarları.md) tıklayabilirsin.

## Program Kurulumu

Severek kullandığım bir kaç program için [buraya](Bilgiler/Programlar.md) tıklayabilirsin :)

> Ayrıca [buraya](./Programlar/) tıklayarak *Programlar* dosyasına da bakabilirsin.

#### Kaynaklar

https://www.scivision.co/install-opencv-python-windows/








