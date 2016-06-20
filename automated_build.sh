# Copy Static Site
CWD=`pwd`

# Clone Pages Repo
cd /tmp
git clone git@github.com:BreadNet/breadnet.github.io.git build

# Trigger Middleman Rebuild
echo `pwd`
cd $CWD
echo `pwd`
bundle exec middleman contentful --rebuild

# Push Newly built Repo

echo "$CWD/build"
cp -r $CWD/build/* /tmp/build

cd /tmp/build

echo "/tmp/build"
echo "$(ls -l)"

git config --global user.email "david.litvakb@gmail.com"
git config --global user.name "David Litvak Bruno"

git add .
git commit -m "Automated Rebuild"
#git push -f origin master
