# Copy Static Site
CWD=`pwd`

# Clone Pages Repo
cd /tmp
git clone git@github.com:BreadNet/breadnet.github.io.git build
cd build
git checkout -b gh-pages origin/gh-pages

# Trigger Middleman Rebuild
cd $CWD
bundle exec middleman contentful --rebuild

# Push Newly built Repo
cp -r $CWD/build /tmp/build

cd /tmp/build

git config --global user.email "david.litvak@gmail.com"
git config --global user.name "David Litvak Bruno"

git add .
git commit -m "Automated Rebuild"
git push -f origin gh-pages
