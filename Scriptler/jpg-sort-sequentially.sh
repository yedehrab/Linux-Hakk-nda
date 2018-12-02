# Sıralamaya başlama değeri
a=1

# Döngü başlangıcı (Tüm .jpg olan dosyaları sıralar)
for i in *.jpg; do
    # Yeni dosya adını değişkene aktarma
    new=$(printf "%04d.jpg" "$a") #04 pad to length of 4
    # Dosya adı değiştirme
    mv -i -- "$i" "$new"
    # Numarayı 1 arttırma
    let a=a+1
done
# Döngü sonu

# Döngü başlangıcı (Tüm .png olan dosyaları sıralar)
for i in *.png; do
    # Yeni dosya adını değişkene aktarma
    new=$(printf "%04d.png" "$a") #04 pad to length of 4
    # Dosya adı değiştirme
    mv -i -- "$i" "$new"
    # Numarayı 1 arttırma
    let a=a+1
done
# Döngü sonu
