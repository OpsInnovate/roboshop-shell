cp mongo.repo /etc/yum.repos.d/mongo.repo
dnf install mongodb-org -y
systemctl enable mongodb
systemctl restart mongod