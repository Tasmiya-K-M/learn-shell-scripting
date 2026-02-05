echo -e "\e[33mInstalling Nginx Server\e[0m"
dnf install nginx -y 

echo -e "\e[33mRemoving the old app content\e[0m"
rm -rf /usr/share/nginx/html/* 

echo -e "\e[33mdownloading the app code\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip 

echo -e "\e[33mExtracting the app code\e[0m"
cd /usr/share/nginx/html 
unzip /tmp/frontend.zip

# vim /etc/nginx/default.d/roboshop.conf 

echo -e "\e[33mstarting the nginx server\e[0m"
systemctl enable nginx
systemctl restart nginx