mkdir.deploy
cd .deploy
git clone --depth 1 --branch gh-pages --single-branch https://github.com/APISENSE/docs.git . || (git init && git remote add -t gh-pages origin https://github.com/APISENSE/docs.git)
rm -rf ./*
cp -r ../_site/* .
git add -A .
git commit -m 'Site updated'
git branch -m gh-pages
git push -q -u origin gh-pages
rm -rf .deploy
