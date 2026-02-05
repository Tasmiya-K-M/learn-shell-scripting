echo -e "\e[33mInstalling Nginx Server\e[0m"
dnf install nginx -y &>> /tmp/roboshop.log

echo -e "\e[33mRemoving Old App content\e[0m"
rm -rf /usr/share/nginx/html/* &>> /tmp/roboshop.log

echo -e "\e[33mdownloading Frontend Content\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip > /tmp/roboshop.log &>> /tmp/roboshop.log

echo -e "\e[33mExtracting Frontend Content\e[0m"
cd /usr/share/nginx/html 
unzip /tmp/frontend.zip &>> /tmp/roboshop.log

# vim /etc/nginx/default.d/roboshop.conf 

echo -e "\e[33mStarting Nginx Server\e[0m"
systemctl enable nginx
systemctl restart nginx