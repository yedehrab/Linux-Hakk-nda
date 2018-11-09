# Linux Path

## Terminal (Uçbirim) dosyası

Terminal dosyası terminal açılmadan önce çalışacak eylemleri barındırmakta,
buraya `export` ile isteğe bağlı PATH ekleyebilirsin.

> Yolu: `~/.bashrc`

Yukarıdaki dosyayı herhangi bir text editörüyle açıp en altına şu kodu ekleyebilirsin.

```bashrc
# Anaconda3'ün terminale eklenmesi
export PATH="/home/$USER/anaconda3/bin:$PATH"
```



