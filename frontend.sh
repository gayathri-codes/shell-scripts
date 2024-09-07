yum install nginx -y &>>/tmp/roboshop.log



rm -rf /usr/share/nginx/html/* &>>/tmp/roboshop.log

curl -o /tmp/frontend.zip https://robo/shop-artifacts.s3.amazonaws.com/frontend.zip &>>/tmp/roboshop.log

cd /usr/share/nginx/html &>>/tmp/roboshop.log
unzip /tmp/frontend.zip &>>/tmp/roboshop.log

cp Users/apple/git-repos/shell-scripts/roboshop.conf /etc/nginx/default.d/roboshop.conf &>>/tmp/roboshop.log

systemctl enable nginx &>>/tmp/roboshop.log
systemctl start nginx &>>/tmp/roboshop.log 

# C:\Users\apple\git-repos\shell-scripts\roboshop.conf