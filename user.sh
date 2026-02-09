# disable the default nodejs and enable the nodejs 18
echo -e "\e[33mdisable the default nodejs and enable the nodejs 18\e[0m"
dnf module disable nodejs -y
dnf module enable nodejs:18 -y

#install nodejs 18
echo -e "\e[33minstall nodejs 18\e[0m"
dnf install nodejs -y

#create user
echo -e "\e[33mcreate user\e[0m"
useradd roboshop

#create the directory
echo -e "\e[33mcreate the directory\e[0m"
rm -rf /app
mkdir /app 

#download the app code
echo -e "\e[33mdownload the app code\e[0m"
curl -L -o /tmp/user.zip https://roboshop-artifacts.s3.amazonaws.com/user.zip 

#unzip the app code under /app directory
echo -e "\e[33munzip the app code under /app directory\e[0m"
cd /app 
unzip /tmp/user.zip

#install the dependencies
echo -e "\e[33minstall the dependencies\e[0m"
npm install 

#service file
echo -e "\e[33mservice file\e[0m"
cp /home/centos/learn-shell/user.service /etc/systemd/system/

#load the servcie
echo -e "\e[33mload service file\e[0m"
systemctl daemon-reload

#enable and restart the service
echo -e "\e[33menable and restart the service\e[0m"
systemctl enable user 
systemctl restart user