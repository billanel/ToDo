echo "Switching to branch master"
git checkout master
echo "Building app..."
npm run build
echo "Deploying files to serevr..."
scp -r build/* mehdi@192.168.15.137:/var/www/html/
echo "Done!"
