# Ubuntu

Ubuntu **debian** tabanlı linux işletim sistemidir.

## Ubuntu uygulama kısayolları

Tüm uygulamaların kısayollarının konumu (desktop-entries | *.desktop files)

* `/usr/share/applications` Globally (Genel, tüm kullanıcların sahip olduğu)
* `~/.local/share/applications` Locally (Yerel, sadece geçerli kullanıcının sahip olduğu)

### Dock'a (Favori Çubuğu'na | Soldaki Şerit'e) elden kısayol ekleme

Öncelikle favori uygulamaları alttaki komutla görmemiz

> `.desktop` uzantılı dosyanızın uygulama kısayolları dizininde olması gerek

```bash
gsettings get org.gnome.shell favorite-apps
```

Ardından istediğimiz sıraya yeni `.desktop` uzantılı dosyayı elle ekleyip, alttaki komutla ayarlmamız lazım.

```bash
gsettings set org.gnome.shell favorite-apps favoriDosyaKısayolları
```
> `favoriDosyaKısayolları` bu alana üstteki koddan aldığımız çıktıyı düzenleyip yazmamız gerekmekte. 

> Örnek kullanım: `['org.gnome.Terminal.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.gedit.desktop']` çıktısını aldıysak ve **2. sıraya** eklemek istediğimiz `firefox.desktop` ise `['org.gnome.Terminal.desktop', 'firefox.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.gedit.desktop']` şeklinde olacaktır.

Çalışan örnek:

```bash
gsettings set org.gnome.shell favorite-apps "['org.gnome.Terminal.desktop', 'firefox.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.gedit.desktop']"
```

## Ubuntu Ekran Görüntüsü ve Kaydetme

Orjinal sayfayı görmek istiyorsan [buraya](https://help.ubuntu.com/stable/ubuntu-help/screen-shot-record.html) tıklayabilirsin.

### Ekran Görüntüsü Alma

- `prt sc` *Tüm ekranın* görüntüsü kaydeder.
- `alt + prt sc` Üzerinde bulunduğunuz *pencerenin* görüntüsünü kaydeder. 
- `shift + prt sc` *Seçeceğiniz alanın* görüntüsünü kaydeder.

> Kaydetme işlemi varsa `$HOME/Pictures` dizinine, yoksa `$HOME` dizinine yapılır. (Kaydetme ismi: *Screenshot-date*)

> `ctrl` tuşuna basılı tutarak, dizine kaydetmek yerine panoya kopyalatabilirsin.

### Ekranı Kayıt Etme

- `ctrl + alt + shift + r` *Ekranda ne varsa* kayıt altına almaya başlar. Kayıt varsa sonlandırır.

> Kaydetme işlemli varsa `$HOME/Videos` dizinine, yoksa `$HOME` dizinine yapılır. (Kaydetme ismi: *Screencast-date*)

---

## Ek olarak

- Temel linux komutları için [buraya](Bilgiler/Linux_Komutları.md) tıklayabilirsin.
- Temel linux değişkenleri için [buraya](Bilgiler/Linux_Değişkenleri.md) tıklayabilirsin.
