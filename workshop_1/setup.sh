install nginx
apt update
apt install -y nginx
cp ./nginx.conf.tpl /etc/nginx/nginx.conf
systemctl restart nginx