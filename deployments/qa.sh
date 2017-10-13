npm install -g now
echo "deploying"
URL=$(now --docker --public --token $NOW_TOKEN)
echo "running acceptance on $URL"
curl --silent -L $URL
echo "fin fin"