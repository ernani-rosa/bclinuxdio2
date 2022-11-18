# Remove apache e unzip
apt remove apache2 -y
apt remove unzip -y

# Remove conteúdo da pasta do apache
rm /var/www/html/* -r
echo "HTML de teste" > index.html
rm /tmp/linux-site-dio-main -r
rm /tmp/main.zip

