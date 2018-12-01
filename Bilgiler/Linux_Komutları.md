# Linux Komutları

Linux işletim sistemindeki komutlardır. Terminal üzerinden kernel'a bildirilir.

## Temel Komutlar

Detalar için [buraya](https://gist.github.com/sayz/1130312/a45b548b82ee459e05a9159ec532224757a2ca56) tıklayarak, açıklamalara ulaşabilirsin.

- `clear` Terminali temizleme
- `sudo -s ` Terminali root yapma `exit` rootlu terminali kapatma
- `sudo apt-get purge paketadi` paketadi paketini kaldirma
- `sudo apt-get purge paket*` Bulunan dizinde paket ile başlayan tüm paketleri kaldırma
- `sudo apt-get purge 'paket*'` paket ile başlayan tüm paketleri ve alt bileşenlerini kaldırma
- `sudo apt-cache search paketadi` Depoda paketadi arama işlemi

## Kısayol oluşturma

Detaylar için [buraya](https://manpages.debian.org/stretch/coreutils/ln.1.en.html) tıklayabilirsin.

```bash
sudo ln -s /dosya/yolu/ dosyaAdi
```
- `ln` İki dosya arasında link oluşturma
- `-s` Statik link yerine sembolik link oluşturma
- `/dosya/yolu` Örneğin /home/$USER
- `dosyaAdi` Oluşturulacak kısayolun ismi

## Kurulum Komutları

İndirdiğimiz dosyaları kurmak için gerkeli olan bir dize komutlar.

### Dpkg - Debian Paket Kurma

- `sudo dpkq -i deb_uzantılı.deb`
- `sudo apt-get install --fix-broken` (kurulum için gerekli paketleri kurma)
- `sudo apt-get autoremove` (gereksizleri kaldırma)


### Tar dosyalarının kurulumları

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


## Donanım Komutlar

* `nproc` İşlemci çekirdek sayısını gösterir.
* `uname -v` Kernel sürümünü gösterir

