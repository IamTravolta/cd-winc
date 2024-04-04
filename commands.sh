cd /home/farm

git add .
git clone git@github.com:M https://github.com/IamTravolta/cd-winc
git branch --set-upstream-to=origin/main master
git pull
systemctl restart farm
exit


