#/bin/bash
#source $HOME/.bashrc
date
workdir=`dirname $0`
cd $workdir
echo "Get all repos from Github"
./get-all-repos.sh $GITHUB_TOKEN /orgs/$GITHUB_ORG/repos | jq -r ".[].full_name" | sort > all-repos.txt
echo "Clone all whitelisted repos from Github"
./sync-repos.sh