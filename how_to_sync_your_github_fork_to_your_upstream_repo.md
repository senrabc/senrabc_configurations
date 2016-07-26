https://robots.thoughtbot.com/keeping-a-github-fork-updated

```git remote add upstream git@github.com:thoughtbot/dotfiles.git

git fetch upstream
git rebase upstream/master 

OR


https://help.github.com/articles/syncing-a-fork/

git checkout master
git fetch upstream 
git merge upstream/master


```
