cd /home/farm/

git add .
git branch --set-upstream-to=origin/farm
git clone git@github.com:M https://github.com/IamTravolta/cd-winc
git pull
systemctl restart farm
exit


