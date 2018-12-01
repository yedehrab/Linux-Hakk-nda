# Ubuntu-Cosmic için indirdiğim uygulamalar

echo 'Sık kullandığım uygulamaların kurulumu'

echo '--------------'
echo 'VsCode Kurulumu'
echo '--------------'
cd /tmp
mkdir vscode
cd vscode
wget http://packages.microsoft.com/repos/vscode/pool/main/c/code/code_1.29.1-1542309157_amd64.deb
sudo dpkg -i install code_1.29.1-1542309157_amd64.deb
sudo apt-get --fix-broken install
sudo dpkg -i install code_1.29.1-1542309157_amd64.deb
cd ..
rm -rf vscode/

echo '--------------'
echo 'Git Kurulumu'
echo '--------------'
sudo apt-get install git


echo '--------------'
echo 'Nodejs (v11) Kurulumu'
echo '--------------'
wget -qO https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt-get install nodejs


echo '--------------'
echo 'OpenJDK-11 Kurulumu (javac, java, vs.)'
echo '--------------'
sudo apt-get install openjdk-11-jdk



