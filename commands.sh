cd /home/farm

git add .
git clone https://github.com/IamTravolta/cd-winc
git branch --set-upstream-to=origin/main main
git pull
systemctl restart farm
exit


