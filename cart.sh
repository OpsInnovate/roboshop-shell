cp cart.service /etc/systemd/system/cart.service
dnf module disable nodejs -y
dnf module enable nodejs:20 -y
dnf install nodejs -y
useradd roboshop
mkdir /app
curl -L -o /tmp/cart.zip https://roboshop-artifacts.s3.amazonaws.com/cart-v3.zip
cd /app
unzip /tmp/cart.zip
npm install
#restart service
systemctl daemon reload
systemsctl enable cart
systemctl start cart