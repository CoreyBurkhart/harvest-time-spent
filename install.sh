# get the file from github, put it in /usr/local/bin
curl -s 'https://raw.githubusercontent.com/CoreyBurkhart/harvest-time-spent/master/time_spent' > /usr/local/bin/time_spent

chmod 700 /usr/local/bin/time_spent

# create the .harvest-env file with user input
echo 'Create a Harvest Personal Access Token here: https://id.getharvest.com/developers'
echo ''
read -p 'Harvest Personal Access Token: ' access_token
read -p 'Harvest Account ID: ' account_id

echo "H_ACCESS_TOKEN=$access_token\nH_ACCOUNT_ID=$account_id\n" > ~/.harvest-env
echo 'Installation complete!'
