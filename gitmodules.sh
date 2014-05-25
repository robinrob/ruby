REPOS="bitbucket global-rakefile rbpassword ruby-app mrrobinsmith.com rakefile last"

for repo in $REPOS; do
	rm -rf projects/$repo
	git rm -r --cached projects/$repo
	git submodule add --force git@bitbucket.org:robinrob/${repo}.git projects/${repo}
done