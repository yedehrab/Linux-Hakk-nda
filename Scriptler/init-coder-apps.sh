# Ubuntu-Cosmic için indirdiğim uygulamalar

echo '------------------------------------------------'
echo 'Yazılımcılar için gerekli uygulamaların kurulumu'
echo '------------------------------------------------'
echo 
echo 'Paketlerin güncelleniyor.'
echo '-------------------------'

sudo apt-get update

echo '-----------------------------------'
read -p "Git indirmek ister misin? [y/n] " # -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo '-----------------------------------'
	echo
	sudo apt-get install git
fi

echo '-----------------------------------'
read -p "VsCode indirmek ister misin? [y/n] " # -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo '-----------------------------------'
	echo
	echo '- /tmp dizinine geçici olarak vscode klasörü açılıyor.'
	cd /tmp
	mkdir vscode
	cd vscode

	echo '- VsCode paketi http ile yükleniyor.'
	wget http://packages.microsoft.com/repos/vscode/pool/main/c/code/code_1.29.1-1542309157_amd64.deb

	echo '- VsCode kurulumu'
	sudo dpkg -i /tmp/vscode/code_1.29.1-1542309157_amd64.deb
	sudo apt-get --fix-broken install
	sudo dpkg -i  code_1.29.1-1542309157_amd64.deb

	echo '- Gereksiz dosyalar siliniyor.'
	cd ..
	rm -rf vscode/
	sudo apt-get autoremove
fi

echo '-----------------------------------'
read -p "Nodejs (v11) indirmek ister misin? [y/n] " # -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo '-----------------------------------'
	echo
	wget -qO https://deb.nodesource.com/setup_11.x | sudo -E bash -
	sudo apt-get install nodejs
fi

echo '-----------------------------------'
read -p "OpenJDK-11 (javac, java vs.) indirmek ister misin? [y/n] " # -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then	
	echo '-----------------------------------'
	sudo apt-get install openjdk-11-jdk
fi

echo '-----------------------------------'
read -p "PostgreSQL indirmek ister misin? [y/n] " # -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo '-----------------------------------'
	echo
	sudo apt-get install postgresql
fi

echo '-----------------------------------'
read -p "PostgreSQL JDBC Driver indirmek ister misin? [y/n] " # -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo '-----------------------------------'
	echo
	sudo apt-get install libpostgresql-jdbc-java libpostgresql-jdbc-java-doc
	echo 'Dosyanın en altına bunu ekleyin'
	echo 'export CLASSPATH=$CLASSPATH:/usr/share/java/postgresql-42.1.4.jar'
	sudo gedit ~/.bashrc
fi






