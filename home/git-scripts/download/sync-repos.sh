#!/bin/bash
 
workdir=`printf "%q\n" "$(pwd)" | tee >(pbcopy)`
workdir="$workdir/repos"
workdir="/Users/alex.vall/Documents/projects/workspace_pruebas/OSX/terminal-customization/MacOs-Install/config/git-scripts/download/repos"
mkdir -p "$workdir"
 
function clone_repo {
    repo=`basename $1`
    cd $workdir
    if [ -d "$workdir/$repo" ]; then
	echo "Updating repo $1"
  	cd "$workdir/$repo"
	#git remote remove origin
	git remote add origin https://$GITHUB_TOKEN@github.com/$1
	git fetch > /dev/null 2> /dev/null
	main_branch=`git remote show origin | grep 'HEAD branch' | cut -d' ' -f5`
        git pull origin $main_branch
    else 
	echo "Clone repo $1"
        git clone https://$GITHUB_TOKEN@github.com/$1.git
	cd "$workdir/$repo"
    fi
    git remote remove origin
    cd $workdir
}
 
# Get repos by whitelist
cat sync-list.txt | while read line 
do
  # do something with $line here
  clone_repo $line
done
 
# Get repos by re
cat all-repos.txt | while read line
do
 clone_repo $line
done
