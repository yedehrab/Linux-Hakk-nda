# Linux Değişkenleri

> Alttaki tüm kodları `echo $HOME` şeklinde yazarak çıktılarını görebilirsin.

## Temel Değişkenler

* `$HOME` Kullanıcının dizini /home/user
* `$USER` Kullanıcı adı 

## Komut Çıktısını Ele Alma

Alttaki şekilde bir komutun sonucunu değişken olarak alıp görebilirsin. 

```bash
echo $(komut)
```

* `komut` Herhangi kullanılabilir komut (örn: nproc)
* Örnek Kullanım: `echo $(nproc)` İşlemcideki çekirdek sayısını gösterir

> Komutlar hakkında detaylı bilgi almak için [buraya](./Linux_Komutları.md) tıklayabilirsin.
