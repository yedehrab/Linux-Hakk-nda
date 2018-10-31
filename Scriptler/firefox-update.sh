# Firefox indirme
wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/63.0/linux-x86_64/tr/firefox-63.0.tar.bz2

# İndirelini dizine çıkarma
tar -xf firefox-63.0.tar.bz2

# Yedek almak için
sudo mv /usr/lib/firefox-esr/ /usr/lib/firefox-esryedek/

# Firefox-Esr silmek için
sudo rm -rf /usr/lib/firefox-esr/

# Yeni Firefox dizinini kopyalama
sudo cp -r firefox-esr/ /usr/lib
