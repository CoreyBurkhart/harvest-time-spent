# get the file from github, put it in /usr/local/bin

# create the .harvest-env file with user input
echo 'Create a Harvest Personal Access Token here: https://id.getharvest.com/developers'
echo ''
read -p 'Harvest Personal Access Token: ' access_token
read -p 'Harvest Account ID: ' account_id

echo "H_ACCESS_TOKEN=$access_token\nH_ACCOUNT_ID=$account_id\n" > ~/.harvest-env
echo 'Installation complete!'
