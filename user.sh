cp user.service /etc/systemd/system/user.service
dnf module disable nodejs -y
dnf module enable nodejs:20 -y
dnf install nodejs -y
useradd roboshop
mkdir /app
curl -L -o /tmp/user.zip https://roboshop-artifacts.s3.amazonaws.com/user-v3.zip
cd /app
unzip /tmp/user.zip
npm install
#restart service
systemctl daemon-reload
systemctl enable user
systemctl restart user