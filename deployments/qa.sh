npm install -g now
echo "deploying"
url= $(now --docker -t $now_token)
echo "running acceptance on $URL"
curl --silent -L $URL