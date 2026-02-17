cd /tmp 
url=https://releases.wikimedia.org/mediawiki/1.45/mediawiki-1.45.1.tar.gz 

echo Downloaded the mediawiki tar file
curl -O $url &>> /var/log/mediawiki.log

echo unzip the tar file
tar -xf /tmp/mediawiki-1.45.1.tar.gz &>> /var/log/mediawiki.log

echo installing apache
yum install httpd -y &>> /var/log/mediawiki.log

rm -rf mediawiki
mv mediawiki-1.45.1 mediawiki
rm -rf /var/www/html/*
cp -r mediawiki /var/www/html/

systemctl enable httpd &>> /var/log/mediawiki.log
systemctl restart httpd