echo -e "\e[33msetting the hostname\e[0m"
hostnamectl set-hostname shipping

#Install maven
echo -e "\e[33mInstall maven\e[0m"
dnf install maven -y

#create user
echo -e "\e[33mcreate user\e[0m"
useradd roboshop

#create app dir
echo -e "\e[33mcreate app dir\e[0m"
mkdir /app 

#download app shipping code
echo -e "\e[33mdownload app shipping code\e[0m"
curl -L -o /tmp/shipping.zip https://roboshop-artifacts.s3.amazonaws.com/shipping.zip 

#unzip the folder
echo -e "\e[33munzip the folder\e[0m"
cd /app 
unzip /tmp/shipping.zip

#install dependencies
echo -e "\e[33minstall dependencies\e[0m"
mvn clean package 
mv target/shipping-1.0.jar shipping.jar 

#create the shipping service file
echo -e "\e[33mcreate the shipping service file\e[0m"
cp /home/centos/learn-shell/shipping.service /etc/systemd/system/

#load the service
echo -e "\e[33mload the service\e[0m"
systemctl daemon-reload

#enable the service
echo -e "\e[33menable the service\e[0m"
systemctl enable shipping 

#install mysql-client
echo -e "\e[33minstall mysql-client\e[0m"
dnf install mysql -y 

#load the data
echo -e "\e[33mload the data\e[0m"
mysql -h mysql-dev.devopspro789.online -uroot -pRoboShop@1 < /app/schema/shipping.sql 

#restart the service
echo -e "\e[33mrestart the service\e[0m"
systemctl restart shipping