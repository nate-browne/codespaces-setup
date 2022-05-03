# set up git
git config --global alias.co "checkout"
git config --global alias.st "status"
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.type "cat-file -t"
git config --global alias.dump "cat-file -p"
git config --global commit.gpgsign true

